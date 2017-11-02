all: unix win

unix: linux64 linux32 osx64

linux64:
	constructor --platform=linux-64 1.1.0_py27
	constructor --platform=linux-64 1.1.0_py36

# linux32 deliberately is py35 and not py36 due to missing packages on py36 (as
# it was discontinued by conda-forge at some point)
linux32:
	constructor --platform=linux-32 1.1.0_py27
	constructor --platform=linux-32 1.1.0_py35

osx64:
	constructor --platform=osx-64 1.1.0_py27
	constructor --platform=osx-64 1.1.0_py36

win: win64 win32

win64:
	constructor --platform=win-64 1.1.0_py27
	constructor --platform=win-64 1.1.0_py36

win32:
	constructor --platform=win-32 1.1.0_py27
	constructor --platform=win-32 1.1.0_py36
