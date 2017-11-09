all: unix win

unix: linux64 linux32 osx64

linux64:
	constructor obspy

osx64:
	constructor obspy

win: win64 win32

win64:
	constructor obspy

win32:
	constructor obspy
