import os
import sys
import glob
import re
os.chdir(os.path.dirname(sys.argv[0]) + "..\\..\\..\\..")
validEntries = [
    r'^.*150\\[^\\]+\.lua',

]

def CheckFile(file):
    for pattern in validEntries:
        #print(pattern,file)
        if re.match(pattern,file):
            b = re.sub(r'\\','/',file)
            print('<Script file="' + b + '"/>')
            return

for entry in glob.iglob("**\*.lua", recursive=True):
    CheckFile(entry)
