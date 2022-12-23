import re
import os
import glob

# Get all *.lua files from RXPGuides directory
dir_path = 'PATH_TO_RXP_ROOT\*.lua'
files_list = glob.glob(dir_path)

# Function to dump locale if files
# (locale format: "L["string"])
def locale_dump(input_text):
    pattern = re.compile("L\(\s*\"(.*?)\"\)|L\(\'(.*?)\'\)")
    return pattern.finditer(input_text)

# Looping through files list and extracting locale
seen = set() # Check for duplicates
for file in files_list:
    file_path = file
    with open (file_path, 'rt') as lua_file:
        file_name = os.path.basename(file_path)
        content = lua_file.read()
        locales = locale_dump(content)
        with open('new_locale.lua', 'a') as f:
            f.write('\n')
            f.write(f"-- {file_name} file") # Write each filename
            f.write('\n\n')
            for match in locales:
                if match.group(1):
                    h = hash(match.group(1))
                    if h not in seen:
                        f.write(f"L[\"{match.group(1)}\"] = \"\"")
                        seen.add(h)
                        f.write('\n')
                if match.group(2):
                    h = hash(match.group(2))
                    if h not in seen:
                        f.write(f"L[\"{match.group(2)}\"] = \"\"")
                        seen.add(h)
                        f.write('\n')
