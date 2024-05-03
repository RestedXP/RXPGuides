import csv, os, glob

db = {}
csvGlob = "./Scripts/Values leveling - .* Classic Era.csv"

for csvPath in glob.glob("./Scripts/Values leveling - * Classic Era.csv"):
    with open(csvPath, "r", newline="") as csvfile:
        csvreader = csv.DictReader(csvfile)

        for row in csvreader:
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

# print(json.dumps(db, indent=2))

with open(f"DB/classic/statWeights.lua", "w", newline="") as out:
    out.write("local _, addon = ...\n\n")

    out.write('if addon.game ~= "CLASSIC" then return end\n\n')

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
