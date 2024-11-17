pausedmusic = 0
fadeoff = 0
ded = false
global.music = -4
global.music2 = -4
global.soundposoffset = 0
global.extraescapemusic = 0
global.escaperumblemusic = -4
soundposoffset = global.soundposoffset
roomname = 214
dynamic = 0
ini_open("saveData.ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
global.scarysound = -4
playintro = true
nolag = 0
