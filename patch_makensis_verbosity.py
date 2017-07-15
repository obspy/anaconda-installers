import fileinput
import os
import constructor

file_to_patch = os.path.join(os.path.dirname(constructor.__file__),
                             'winexe.py')

for line in fileinput.input(file_to_patch, inplace=True):
    if line.strip() == "args = [MAKENSIS_EXE, '/V2', nsi]":
        # increase verbosity to max
        line = line.replace("'/V2'", "'/V4'")
    if line.strip() == "check_call(args)":
        # increase verbosity to max
        print('    sub = Popen(args, stdout=PIPE, stderr=PIPE)', end=os.linesep)
        print('    stdout, stderr = sub.communicate()', end=os.linesep)
        print('    print("makensis stdout:")', end=os.linesep)
        print('    print(stdout)', end=os.linesep)
        print('    print("makensis stderr:")', end=os.linesep)
        print('    print(stderr)', end=os.linesep)
        line = ''
    if line.strip() == "from subprocess import check_call, check_output":
        # increase verbosity to max
        line = line.replace("check_call", "Popen, PIPE")
    print(line, end='')
