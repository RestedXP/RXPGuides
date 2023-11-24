import csv, os

files = {
  "Alliance": 'Hardcore dangerous mobs - Alliance.csv',
  "Horde": 'Hardcore dangerous mobs - Horde.csv'
}
db = {}

for faction, factionCsv in files.items():
  if not os.path.exists(f'./Scripts/{factionCsv}'):
    print(f'{factionCsv} not found');
    continue

  headers = []
  db[faction] = {}

  with open(f'./Scripts/{factionCsv}', 'r', newline='') as csvfile:
    csvreader = csv.DictReader(csvfile)

    headers = next(csvreader)
    excluded_count = 0
    included_count = 0
    #Name,Zone,Level,Classification,Type,Movement,Notes/Special abilities,Line

    for mob in csvreader:
      if not "Commands" in mob or not mob['Commands'] or not mob['Name'] or not mob['Level']:
        excluded_count += 1
        print('error:',mob)
        continue

      if not mob['Zone'] in db[faction]:
        db[faction][mob['Zone']] = {}

      if not mob['Name'] in db[faction][mob['Zone']]:
        db[faction][mob['Zone']][mob['Name']] = []

      if mob['Level'].isnumeric():
        minLevel = mob['Level']
        maxLevel = mob['Level']
      else:
        minLevel = mob['Level'].split('-')[0]
        maxLevel = mob['Level'].split('-')[1]

      notes = mob['Notes/Abilities'].replace('"', '\\"')

      db[faction][mob['Zone']][mob['Name']].append(
        f"        {{\n        MinLevel = {minLevel},\n        MaxLevel = {maxLevel},\n        Classification = \"{mob['Classification']}\",\n        Movement = \"{mob['Movement']}\",\n        Notes = \"{notes}\",\n        Location = \"{mob['Commands']}\"\n        }},\n"
      )

      included_count += 1

    print(f'{included_count} Parsed / {excluded_count} Excluded')

with open(f'DB/classic/dangerousMobs.lua', 'w', newline='') as out:
  out.write('local _, addon = ...\n\n')

  out.write('local dangerousMobs = {\n')

  for faction in db:
    out.write(f"  ['{faction}'] = {{\n")

    for zone in db[faction]:
      out.write(f"    ['{zone}'] = {{\n")

      for name, mobList in db[faction][zone].items():
        out.write(f"      [\"{name}\"] = {{\n")
        for lua in mobList:
          out.write(lua)
        out.write('      },\n')

      out.write('    },\n')

    out.write('  },\n')


  out.write('}\n\n')
  out.write('addon.dangerousMobs = dangerousMobs[_G.UnitFactionGroup("player")]\n')
