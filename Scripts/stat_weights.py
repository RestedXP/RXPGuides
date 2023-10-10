import csv, os

db = {}
csvPath = "./Scripts/Values leveling - Classic sheet.csv"

if not os.path.exists(csvPath):
    print(f"{csvPath} not found")
    exit

with open(csvPath, "r", newline="") as csvfile:
    csvreader = csv.DictReader(csvfile)

    for row in csvreader:
        db[row["Title"]] = {}
        for key in row:
            value = row[key]
            if key == "" or row[key] == "":
                continue

            db[row["Title"]][key] = value

# print(json.dumps(db, indent=2))

with open(f"DB/classic/statWeights.lua", "w", newline="") as out:
    out.write("local _, addon = ...\n\n")

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
