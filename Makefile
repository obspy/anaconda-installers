all: unix win

unix: linux64 linux32 osx64

linux64:
	constructor --platform=linux-64 1.0.3_py27

linux32:
	constructor --platform=linux-32 1.0.3_py27

osx64:
	constructor --platform=osx-64 1.0.3_py27

win: win64 win32

win64:
	constructor --platform=win-64 1.0.3_py27

win32:
	constructor --platform=win-32 1.0.3_py27
