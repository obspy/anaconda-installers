import fileinput
import os
import constructor

file_to_patch = os.path.join(os.path.dirname(constructor.__file__),
                             'winexe.py')

for line in fileinput.input(file_to_patch, inplace=True):
    if line.strip() == "args = [MAKENSIS_EXE, '/V2', nsi]":
        # increase verbosity to max
        line = line.replace("'/V2'", "'/V4'")
    print(line, end='')
