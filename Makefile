all: unix
# building windows on nix doesn't work anyway
# all: unix win

unix: linux64 linux32 osx64

linux64: linux64-py27 linux64-py36
linux64-py27:
	constructor --verbose --platform=linux-64 1.1.0_py27 2>&1 | tee 1.1.0_py27_linux-64.log
linux64-py36:
	constructor --verbose --platform=linux-64 1.1.0_py36 2>&1 | tee 1.1.0_py36_linux-64.log

# linux32 deliberately is py35 and not py36 due to missing packages on py36 (as
# it was discontinued by conda-forge at some point)
linux32: linux32-py27 linux32-py35
linux32-py27:
	constructor --verbose --platform=linux-32 1.1.0_py27 2>&1 | tee 1.1.0_py27_linux-32.log
linux32-py35:
	constructor --verbose --platform=linux-32 1.1.0_py35 2>&1 | tee 1.1.0_py35_linux-32.log

osx64: osx64-py27 osx64-py36
osx64-py27:
	constructor --verbose --platform=osx-64 1.1.0_py27 2>&1 | tee 1.1.0_py27_osx-64.log
osx64-py36:
	constructor --verbose --platform=osx-64 1.1.0_py36 2>&1 | tee 1.1.0_py36_osx-64.log

# building windows on nix doesn't work anyway
# # basemap 1.1.0 seems to not be available for py36 on win
# win: win64 win32
# win64:
# 	constructor --platform=win-64 1.1.0_py27
# 	constructor --platform=win-64 1.1.0_py35
# win32:
# 	constructor --platform=win-32 1.1.0_py27
# 	constructor --platform=win-32 1.1.0_py35
