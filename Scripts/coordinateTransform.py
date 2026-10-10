
import numpy as np
import csv
import os
import re
import sys
import csv
import glob

sys.stdout.reconfigure(encoding='utf-8')
path = os.path.dirname(sys.argv[0])
print(path)
os.chdir(os.path.dirname(sys.argv[0]))




def ReadCSV(fileName,validEntries,mapIdField,outputType):
    output = {}
    with open(fileName, newline='', encoding="utf-8") as csvfile:
        reader = csv.reader(csvfile, delimiter=',',
                                quotechar='"')
        n = 0
        columns = []
        for row in reader:
            n = n + 1
            mapId = 0
            if n == 1:
                columns = row
                #print(row)
            else:
                i = 0
                entry = {}
                for v in row:
                    column = columns[i]
                    i = i + 1
                    if column == mapIdField:
                        mapId = int(v)
                    if column in validEntries:
                        entry[column] = outputType(v)
                output[mapId] = entry
    return output



validEntries = {
'Name_lang',
}

fileName = "UiMap.1.15.9.69722.csv"
zoneNameToID = ReadCSV(fileName,validEntries,"ID",str)


validEntries = {
'Region_0',
'Region_1',
'Region_3',
'Region_4',
#'UiMapID',
'MapID',
}
fileName = "UiMapAssignment.1.15.9.69722.csv"
zones = ReadCSV(fileName,validEntries,"UiMapID",float)
tMatrix = {}
for mapId,mapData in zones.items():
    #left - right, top - bottom, left, top
    # r4-r1,r3-r0,r4,r3
    tMatrix[mapId] = [
        mapData['Region_4'] - mapData['Region_1'],
        mapData['Region_3'] - mapData['Region_0'],
        mapData['Region_4'],
        mapData['Region_3'],
        zoneNameToID[mapId]['Name_lang'],
        int(mapData['MapID']),
    ]

#print(tMatrix)
#print(zoneNameToID[1445])


# Using HBD to retrieve world coordinates won't return the true position for
# Draenei/Blood Elf starting zones (map ID 530)
# World Map (EK or Kalimdor) -> Internal coordinate system:
outlandTranslation = {
    0: [
        0.99998379052236,
        -2662.8741665897,
        1.0000065359724,
        2399.9952298664
    ],
    1: [
        0.99994078754589,
        -17599.738422949,
        0.99966365183549,
        -10337.647960377
    ]
}

tMatrix[0] = outlandTranslation[0].copy()
tMatrix[1] = outlandTranslation[1].copy()

def BuildMatrix(coeffs):
    a = np.zeros((3,3))
    a[0,0] = coeffs[0]
    a[2,0] = coeffs[1]
    a[1,1] = coeffs[2]
    a[2,1] = coeffs[3]
    a[2,2] = 1
    return a

def FindInverse(coeffs):
    i = BuildMatrix(coeffs)
    i = np.linalg.inv(i)
    return i

reverse = {}

for map in tMatrix.keys():
    p = tMatrix[map]
    if len(p) > 6 and not map in outlandTranslation:
        a = BuildMatrix(p)
        b = BuildMatrix(outlandTranslation[p[6]])
        c = np.matmul(a,b)
        outlandTranslation[map] = True

        p[0] = c[0,0]
        p[1] = c[2,0]
        p[2] = c[1,1]
        p[3] = c[2,1]

def Transform(x,y,zone,inverse = False):
    if not zone in tMatrix:
        return (0,0)
    if isinstance(zone,list):
        c = zone
    else:
        c = tMatrix[zone]
    if not zone in reverse:
        i = FindInverse(c)
        reverse[zone] = [i[0,0],i[2,0],i[1,1],i[2,1],c[4],c[5]]
    if inverse:
        c = reverse[zone]
    #print(c)
    width = c[0]
    height = c[1]
    left = c[2]
    top = c[3]
    fx = left-width*x
    fy = top-height*y
    #map = c[5]

    #print(fx,fy)
    #r = np.matmul(np.matrix([[x,y,1]]),mat)
    #return (r[0,0],r[0,1],tMatrix[zone][5])
    return (fx,fy)

def FindWorldCoords(x,y,map):
    return Transform(x,y,map)

def FindZoneCoords(x,y,map):
    return Transform(x,y,map,True)

def CoordinateTranslation(x,y,map,target):
    if target == 530:
        return Transform(x,y,map)
    if map == 530:
        return Transform(x,y,target,True)
    c = Transform(x,y,map)
    return Transform(c[0],c[1],target,True)

mapIds = {}

for mapId in tMatrix.keys():
    if len(tMatrix[mapId]) > 4:
        mapName = tMatrix[mapId][4]
        mapIds[mapName] = mapId

def GetMapId(name):
    if name in mapIds:
        return mapIds[name]
    else:
        print("map not found: ",map)
        return -1

"""
import json

def ReadJson(path):
    f = open(path,'r')
    out = f.read()
    f.close()
    return json.loads(out)

AreaTable = False

def GetMapIdFromArea(id):
    global AreaTable
    if AreaTable == False:
        AreaTable = {}
        for entry in ReadJson("AreaTable.json"):
            AreaTable[entry["ID"]] = [entry["AreaName_Lang_enUS"],entry["ParentAreaID"]]
    mapId = -1
    n = 0
    while mapId <0 and n < 9:
        n = n + 1
        if id in AreaTable:
            area = AreaTable[id]
            id = GetMapId(area[0])
            if id < 0:
                id = area[1]
            else:
                #print(area[0])
                mapId = id
        else:
            break

    return mapId

WorldMapArea = False
def TranslateMapId(id):
    global WorldMapArea
    if WorldMapArea == False:
        WorldMapArea = {}
        for entry in ReadJson("WorldMapArea.json"):
            WorldMapArea[entry['ID']] = entry['AreaID']
    if id in WorldMapArea:
        return GetMapIdFromArea(WorldMapArea[id])
    else:
        return -1
"""

def GetWorldCoords(map,x,y):
    oldmap = map
    if isinstance(map,str):
        if map == "StormwindClassic":
            map = "Stormwind City"
        map = GetMapId(map)
    if map == -1:
        print('map not found: ',oldmap,x,y)
    x,y = FindWorldCoords(x/100,y/100,map)
    if map in tMatrix:
        instance = tMatrix[map][5]
        return "{0}/{1},{2:.2f},{3:.2f}".format(map,instance,x,y)
    else:
        print('error: ',map,x,y)


print(FindWorldCoords(41/100,46.13/100,1411))

print(GetWorldCoords("Durotar",41,46.13))


def find_lua_files(directory):
    """Find all .lua files recursively in directory using glob"""
    # Normalize path separators to backslashes for Windows
    win_dir = directory.replace("/", "\\")

    # Ensure the path ends with a backslash before adding wildcard
    if win_dir[-1] != "\\":
        win_dir = win_dir + "\\"

    # Use glob to find all .lua files recursively (**/*.lua)
    pattern = os.path.join(win_dir, "**", "*.lua")

    print(f"Searching for Lua files in: {win_dir}")

    lua_files = glob.glob(pattern, recursive=True)

    for file_path in lua_files:
        print(f"Found Lua file: {file_path}")

    return lua_files

def update_file_contents(file_path):
    """Update file contents with coordinate conversion"""
    try:
        # 1. Open file for reading
        with open(file_path, "r", encoding="utf-8") as file:
            content = file.read()

        guide_lines = []

        # Process line by line (preserving line endings)
        lines = content.splitlines(keepends=True)

        for line in lines:
            # Pattern: ^(\s*\.\w+\s+)([A-Za-z][^,]+),(\d+\.?\d*),(\d+\.?\d*)(.*)$
            match = re.match(r'^(\s*\.[gpw][oia][tny]\w+\s+)([A-Za-z][^,]+),(\d+\.?\d*),(\d+\.?\d*)(.*)([\r\n]*)$', line)

            if match:
                cmd_part = match.group(1)
                zone_name = match.group(2)
                x_coord = match.group(3)
                y_coord = match.group(4)
                suffix = match.group(5)
                line_break = match.group(6)

                # Check if not a .line command
                if ".line" not in line:
                    try:
                        x_val = float(x_coord)
                        y_val = float(y_coord)

                        # Convert coordinates
                        old_coords = f'{zone_name},{x_coord},{y_coord}'
                        new_coords = GetWorldCoords(zone_name, x_val, y_val)
                        line = cmd_part + new_coords + suffix + "--c:" + old_coords + line_break
                    except ValueError:
                        pass  # Not a valid number, skip conversion

            guide_lines.append(line)

        # 2. Write back to file
        with open(file_path, "w", encoding="utf-8") as file:
            file.write("".join(guide_lines))

        print(f"File updated successfully: {file_path}")

    except Exception as e:
        print(f"Error processing file {file_path}: {e}")

# Main execution
if __name__ == "__main__":
    # Get script directory using os.getcwd() instead of os.popen("cd")
    script_dir = os.getcwd()

    print(script_dir)

    # Construct path to search for Lua files
    path = os.path.join(script_dir, "..", "Guides", "forever")
    path = os.path.normpath(path) + "\\"

    print(path)

    # Find all .lua files using glob
    files = find_lua_files(path)

    # Process each file
    for i, file in enumerate(files, 1):
        print(file)
        update_file_contents(file)
