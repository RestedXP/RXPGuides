"""Import build-matched DB2 CSVs and audit Classic plans by spell identity.

Input is a directory of CSV exports from https://wago.tools/db2/<Table>/csv
with build=1.60.1.69913. Does not download data or invent replacement talents.
"""
import argparse
import csv
import hashlib
import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CLASS_MASKS = {1: 'warrior', 2: 'paladin', 4: 'hunter', 8: 'rogue', 16: 'priest',
               64: 'shaman', 128: 'mage', 256: 'warlock', 1024: 'druid'}
BUILD = '1.60.1.69913'


def import_data(directory):
    hashes = {}
    def rows(name):
        path = directory / (name + '.csv')
        hashes[name] = hashlib.sha256(path.read_bytes()).hexdigest()
        with path.open(encoding='utf-8-sig', newline='') as stream:
            return list(csv.DictReader(stream))
    names = {int(r['ID']): r['Name_lang'] for r in rows('SpellName')}
    definitions = {int(r['ID']): r for r in rows('TraitDefinition')}
    entries = {int(r['ID']): r for r in rows('TraitNodeEntry')}
    joined = defaultdict(list)
    for row in rows('TraitNodeXTraitNodeEntry'):
        joined[int(row['TraitNodeID'])].append(int(row['TraitNodeEntryID']))
    trees = defaultdict(list)
    for row in rows('TraitNode'):
        node = {'nodeID': int(row['ID']), 'x': int(row['PosX']), 'y': int(row['PosY']),
                'type': int(row['Type']), 'flags': int(row['Flags']), 'entries': []}
        for entry_id in joined[node['nodeID']]:
            entry = entries[entry_id]
            definition_id = int(entry['TraitDefinitionID'])
            definition = definitions[definition_id]
            spell_id = int(definition['SpellID'])
            node['entries'].append({'entryID': entry_id, 'definitionID': definition_id,
                'spellID': spell_id, 'maxRanks': int(entry['MaxRanks']),
                'name': definition['OverrideName_lang'] or names.get(spell_id, '')})
        trees[int(row['TraitTreeID'])].append(node)
    tabs = {int(r['ID']): r for r in rows('TalentTab')}
    classic = defaultdict(dict)
    for row in rows('Talent'):
        tab = tabs.get(int(row['TabID']))
        if not tab or int(tab['ClassMask']) not in CLASS_MASKS:
            continue
        coordinates = ','.join(str(int(v) + 1) for v in
                               (tab['OrderIndex'], row['TierID'], row['ColumnIndex']))
        classic[CLASS_MASKS[int(tab['ClassMask'])]][coordinates] = int(row['SpellRank_0'])
    eligible = {int(row['TraitTreeID']) for row in rows('SkillLineXTraitTree')}
    tree_spells = {tree: {entry['spellID'] for node in nodes for entry in node['entries']}
                   for tree, nodes in trees.items()}
    classes = {}
    for name, coordinates in sorted(classic.items()):
        ranked = sorted(((len(set(coordinates.values()) & tree_spells[tree]), tree)
                         for tree in eligible), reverse=True)
        assert ranked[0][0] > 0 and ranked[1][0] == 0, f'Ambiguous class tree: {name}'
        classes[name] = {'treeID': ranked[0][1], 'sharedClassicSpellIDs': ranked[0][0],
                         'classicSlots': coordinates,
                         'nodes': sorted(trees[ranked[0][1]], key=lambda n: n['nodeID'])}
    assert set(classes) == set(CLASS_MASKS.values())
    return {'build': BUILD, 'source': 'https://wago.tools/db2/', 'sha256': hashes,
            'classes': classes}


def audit_plans(data):
    results = []
    for name, cls in data['classes'].items():
        spells = defaultdict(list)
        for node in cls['nodes']:
            for entry in node['entries']:
                spells[entry['spellID']].append(entry)
        text = (ROOT / 'Guides/Talents' / f'classic-{name}.lua').read_text(encoding='utf-8')
        for guide in re.findall(r'RegisterGuide\(\[\[(.*?)\]\]\)', text, re.S):
            title = re.search(r'^#name (.+)', guide, re.M)[1].strip()
            min_level = int(re.search(r'^#minLevel (\d+)', guide, re.M)[1])
            issues, steps = [], []
            for i, block in enumerate(re.split(r'^level\b', guide, flags=re.M)[1:]):
                for tab, row, column, rank in re.findall(r'\.talent (\d+),(\d+),(\d+),(\d+)', block):
                    slot = ','.join((tab, row, column))
                    spell = cls['classicSlots'].get(slot)
                    step = {'level': min_level + i, 'spellID': spell, 'rank': int(rank)}
                    steps.append(step)
                    matches = spells.get(spell, [])
                    if not matches:
                        issues.append({**step, 'issue': 'removed', 'classicSlot': slot})
                    elif all(int(rank) > entry['maxRanks'] for entry in matches):
                        issues.append({**step, 'issue': 'reducedRanks',
                                       'maxRanks': max(e['maxRanks'] for e in matches)})
            results.append({'class': name, 'name': title, 'issues': issues,
                            'hasOptionalSteps': '#optional' in guide, 'steps': steps})
    return results


def check_live_warrior(data):
    fixture = json.loads((ROOT / 'Scripts/fixtures/forever-warrior-69913.json').read_text())
    def identities(nodes):
        return {(n['nodeID'], e['entryID'], e['spellID'], e['maxRanks'], n['x'], n['y'])
                for n in nodes for e in n['entries']}
    live = identities([node for tree in fixture['trees'] for node in tree['nodes']])
    assert identities(data['classes']['warrior']['nodes']) == live, 'DB2/live Warrior mismatch'


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('csv_directory', type=Path)
    args = parser.parse_args()
    data = import_data(args.csv_directory)
    check_live_warrior(data)
    plans = audit_plans(data)
    for filename, value in [('forever-traits-69913.json', data), ('forever-plan-audit-69913.json', plans)]:
        (ROOT / 'Scripts/fixtures' / filename).write_text(json.dumps(value, indent=2) + '\n', encoding='utf-8')
    compatible = sum(not plan['issues'] for plan in plans)
    print(f'Imported {len(data["classes"])} class trees; exact match to all 53 live Warrior nodes.')
    print(f'{compatible}/{len(plans)} Classic plans retain valid spell identities and rank limits.')
