depth = -9999
active = false
input = ""
keyboard_string = ""
inputbuffer = 2
inputmax = 2
deletebuffer = 6
deletemax = 6
arrayi = 0
objectarray = 0
objectx = 0
objecty = 0
commands[arrayi++] = "help (page)"
commands[arrayi++] = "newhud (true/false)"
commands[arrayi++] = "heatmeter (true/false)"
commands[arrayi++] = "standardhitstun [value]"
commands[arrayi++] = "voicefrequency [value]"
commands[arrayi++] = "escape [minutes] [seconds]"
commands[arrayi++] = "togglecollision (true/false)"
commands[arrayi++] = "debugmode (true/false)"
commands[arrayi++] = "collectstyle (old/new)"
commands[arrayi++] = "newtitlescreen (true/false)"
commands[arrayi++] = "newsjumpcancel (true/false)"
commands[arrayi++] = "wallrunstyle (older/old/new)"
commands[arrayi++] = "pitchshift (on/off)"
commands[arrayi++] = "escapecollect (old/new)"
commands[arrayi++] = "groundpoundstyle (old/new)"
commands[arrayi++] = "ratmode (on/off)"
pagelength = 5
pagenumber = round(arrayi / 5)
showcollisions = false
oldshowcollision = false
var i = 0
showcollisionarray[i++] = 68
showcollisionarray[i++] = 120
showcollisionarray[i++] = 121
showcollisionarray[i++] = 122
showcollisionarray[i++] = 124
showcollisionarray[i++] = 185
showcollisionarray[i++] = 187
showcollisionarray[i++] = 186
showcollisionarray[i++] = 183
showcollisionarray[i++] = 184
showcollisionarray[i++] = 71
showcollisionarray[i++] = 392
showcollisionarray[i++] = 159
showcollisionarray[i++] = 48
showcollisionarray[i++] = 34
cursor = "|"
delay = 20
alarm[0] = delay
var page = 1
var first = pagelength * (page - 1)
var last = clamp((pagelength * page), 1, array_length(commands))
commandhistory = "COMMAND LIST (PAGE " + string(page) + " OF " + string(pagenumber) + ")#"
for (i = first; i < last; i++)
    commandhistory += (string(commands[i]) + "#")
