import csv, os, glob

classicDb = {}
classicGlob = "./Scripts/Values leveling - * Classic Era.csv"
cataDb = {}
cataGlob = "./Scripts/Values leveling - * Cataclysm.csv"

for csvPath in glob.glob(classicGlob):
    with open(csvPath, "r", newline="") as csvfile:
        csvreader = csv.DictReader(csvfile)

        for row in csvreader:
            if row["Spec"]:
                dbTitle = f'{row["Title"]} - {row["Spec"]}'
            else:
                dbTitle = row["Title"]

            classicDb[dbTitle] = {}
            for key in row:
                value = row[key]
                if key == "" or row[key] == "":
                    continue

                classicDb[dbTitle][key] = value

# print(json.dumps(db, indent=2))

with open(f"DB/classic/statWeights.lua", "w", newline="") as out:
    out.write("local _, addon = ...\n\n")

    out.write('if addon.game ~= "CLASSIC" then return end\n\n')

    out.write("addon.statWeights = {\n")

    for title in classicDb:
        out.write(f"    ['{title}'] = {{\n")

        for key in classicDb[title]:
            if key in ["Title", "Class", "Kind", "Spec"]:
                out.write(f"        ['{key}'] = \"{classicDb[title][key]}\",\n")
            else:
                out.write(f"        ['{key}'] = {classicDb[title][key]},\n")

        out.write("    },\n")

    out.write("}\n\n")

# TODO consolidate blocks
for csvPath in glob.glob(cataGlob):
    with open(csvPath, "r", newline="") as csvfile:
        csvreader = csv.DictReader(csvfile)

        for row in csvreader:
            if not row["Title"]:
                continue

            if row["Spec"]:
                dbTitle = f'{row["Title"]} - {row["Spec"]}'
            else:
                dbTitle = row["Title"]

            cataDb[dbTitle] = {}
            for key in row:
                value = row[key]
                if key == "" or row[key] == "":
                    continue

                cataDb[dbTitle][key] = value

with open(f"DB/cata/statWeights.lua", "w", newline="") as out:
    out.write("local _, addon = ...\n\n")

    out.write('if addon.game ~= "CATA" then return end\n\n')

    out.write("addon.statWeights = {\n")

    for title in cataDb:
        out.write(f"    ['{title}'] = {{\n")

        for key in cataDb[title]:
            if key in ["Title", "Class", "Kind", "Spec"]:
                out.write(f"        ['{key}'] = \"{cataDb[title][key]}\",\n")
            else:
                out.write(f"        ['{key}'] = {cataDb[title][key]},\n")

        out.write("    },\n")

    out.write("}\n\n")
