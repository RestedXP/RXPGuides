"""Inventory migrated API references against a local Blizzard UI source checkout."""
import json
import re
import sys
from pathlib import Path

root = Path(__file__).resolve().parents[1]
source = Path(sys.argv[1])
docs = source / 'Interface/AddOns/Blizzard_APIDocumentationGenerated'
apis = {}
for path in docs.glob('*.lua'):
    text = path.read_text(encoding='utf-8-sig')
    ns = re.search(r'Namespace = "([^"]+)"', text)
    section = text.split('Events =')[0].split('Tables =')[0]
    for name in re.findall(r'Name = "([^"]+)",\s*Type = "Function"', section):
        apis.setdefault(name, []).append((ns.group(1) + '.' if ns else '') + name)

results = {}
for path in sorted(root.rglob('*.lua')):
    if path.parts[len(root.parts)] in ('Guides', 'lang', 'locale', 'DB'):
        continue
    text = path.read_text(encoding='utf-8-sig')
    moved = {}
    for name in set(re.findall(r'(?<![\w.:])(?:_G\.)?([A-Z]\w+)\s*\(', text)):
        candidates = apis.get(name, [])
        if candidates and name not in candidates:
            moved[name] = candidates
    if moved:
        results[str(path.relative_to(root))] = moved
print(json.dumps(results, indent=2))
