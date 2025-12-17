
import re
import os
import glob
import sys

path = os.path.dirname(sys.argv[0])
os.chdir(path)
dir_path = os.path.realpath(os.path.join(path, os.path.pardir))


# Get all *.lua files from RXPGuides directory
files_list = glob.glob(dir_path + '\\**\\*.lua',recursive=True)

# Function to dump locale if files
# (locale format: "L["string"])

exceptions = [
    r'\\libs\\',
    r'\\Guides\\',
    r'\\locale\\',
    r'\\Scripts\\',
]
allowed = [
    re.escape('enUS.lua')
]

def check_exceptions(dir):
    for entry in allowed:
        if re.search(entry,dir):
            return False
    for entry in exceptions:
        if re.search(entry,dir):
            return True
    return False

def locale_dump(input_text):
    pattern = re.compile(r"L\(\s*\"(.*?)\"\)|L\(\'(.*?)\'\)|L\'(.*?)\'|L\"(.*?)\"|\"CLICK RXP.*?\] =\s*.*?\"(.*?%d)\"")
    return pattern.finditer(input_text)

# Looping through files list and extracting locale
seen = set() # Check for duplicates


with open ("new_locale.lua", 'wt') as f:
    f.write('--')


for file in files_list:
    file_path = file
    if check_exceptions(file):
        continue
    with open (file_path, 'rt') as lua_file:
        file_name = os.path.basename(file_path)
        print(file_path)
        try:
            content = lua_file.read()
            locales = locale_dump(content)

            with open('new_locale.lua', 'a') as f:
                f.write('\n')
                p = os.path.relpath(file_path, start=dir_path)
                f.write(f"-- {p} file") # Write each filename
                f.write('\n\n')
                for match in locales:
                    for grp in range(1,6):
                        if match.group(grp):
                            h = hash(match.group(grp))
                            if h not in seen:
                                f.write(f"L[\"{match.group(grp)}\"] = \"\"")
                                seen.add(h)
                                f.write('\n')

        except:
            print('Error')
