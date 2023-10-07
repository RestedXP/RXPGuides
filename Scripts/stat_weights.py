import csv, os

import json

db = {}
csvPath = './Scripts/Values leveling - Classic sheet.csv'

if not os.path.exists(csvPath):
    print(f'{factionCsv} not found');
    exit

headers = []

with open(csvPath, 'r', newline='') as csvfile:
    csvreader = csv.DictReader(csvfile)

    headers = next(csvreader)

    # Title,Class,Spec,Kind,Strength,Agility,Intellect,Stamina,Spirit,HP 5,MP 5,Spell dmg,Healing,Spell hit,Spell crit,Arcane dmg,Fire damage,Nature damage,Frost damage,Shadow damage,Attack power,Weapons 1 DPS,"Weapon speed (0.1s) 2h - 2,1 fastest","Weapon speed (0.1s) mh - 1,3 fastest","Weapon speed(0.1s) oh - 1,3 fastest",Hit chance,Crit chance,Ranged Weapon DPS,"Ranged weapon speed (0,1s) - fastest 1.3",Ranged Attack Power,Axe skill,Bow skill,Crossbow skill,Dagger skill,Gun skill,MAce skill,Sword skill,Two handed axe skill,two handed mace skill,two handed sword skill,Armor,Defense,Dodge chance,Parry chance,,"Total (Fun, just to see what classes impacted from gear)"
    for row in csvreader:
        db[row['Title']] = {}
        for key in row:
            value = row[key]
            if key == "" or row[key] == "":
                continue

            db[row['Title']][key] = value

#print(json.dumps(db, indent=2))

with open(f'DB/classic/statWeights.lua', 'w', newline='') as out:
  out.write('local _, addon = ...\n\n')

  out.write('addon.statWeights = {\n')

  for title in db:
    out.write(f'    [\'{title}\'] = {{\n')

    for key in db[title]:
        if key in ['Title', 'Class', 'Kind', 'Spec']:
            out.write(f'        [\'{key}\'] = "{db[title][key]}",\n')
        else:
            out.write(f'        [\'{key}\'] = {db[title][key]},\n')

    out.write('    },\n')

  out.write('}\n\n')
