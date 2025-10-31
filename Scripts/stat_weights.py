import csv, glob
import sys
import argparse

config = {
    "classic": {
        "glob": "./Scripts/Values leveling - * Classic Era.csv",
        "path": 'DB/classic/statWeights.lua',
        "classCount": 9
    },
    "tbc": {
        "glob": "./Scripts/Values leveling - * TBC.csv",
        "path": 'DB/tbc/statWeights.lua',
        "classCount": 9
    },
    "cata": {
        "glob": "./Scripts/Values leveling - * Cataclysm.csv",
        "path": 'DB/cata/statWeights.lua',
        "classCount": 10
    }
}

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--client', type=str, required=True, choices=['classic', 'tbc', 'cata'] )
    args = parser.parse_args()

    config = config[args.client]
    db = {}

    for csvPath in glob.glob(config['glob']):
        with open(csvPath, "r", newline="") as csvfile:
            csvreader = csv.DictReader(csvfile)

            for row in csvreader:
                if not row["Title"]:
                    continue

                if row["Spec"]:
                    dbTitle = f'{row["Title"]} - {row["Spec"]}'
                else:
                    dbTitle = row["Title"]

                db[dbTitle] = {}
                for key in row:
                    value = row[key]
                    if key == "" or row[key] == "":
                        continue

                    db[dbTitle][key] = value

    if len(db) < config['classCount']:
        print(f"Missing class csv, expected {config['classCount']} got {len(db)}")
        sys.exit(1)

    with open(config['path'], "w", newline="") as out:
        out.write("local _, addon = ...\n\n")

        out.write(f'if addon.game ~= "{args.client.upper()}" then return end\n\n')

        out.write("addon.statWeights = {\n")

        for title in db:
            out.write(f"    ['{title}'] = {{\n")

            for key in db[title]:
                if key in ["Title", "Class", "Kind", "Spec"]:
                    out.write(f"        ['{key}'] = \"{db[title][key]}\",\n")
                else:
                    out.write(f"        ['{key}'] = {db[title][key]},\n")

            out.write("    },\n")

        out.write("}\n\n")
