var i = minigolf_1
while room_exists(i)
{
    if (room != room_initializer)
        global.roomlist[i] = room_get_name(i)
    i++
}
function sh_hud_style(argument0) //gml_Script_sh_hud_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        default:
            arg1 = (!global.newhud)
            break
    }

    global.newhud = arg1
    with (obj_tv)
    {
        alarm[0] = -1
        imageindexstore = 0
        image_index = 0
        image_speed = 0
        tvsprite = spr_tvboot
        newtvsprite = spr_tv_open
        sprite_index = spr_tvboot
        bootingup = false
    }
    ini_open("saveData.ini")
    ini_write_real("Option", "newhud", arg1)
    ini_close()
}

function meta_hud_style() //gml_Script_meta_hud_style
{
    return 
    {
        description: "switches HUD style",
        arguments: ["<style>"],
        suggestions: [["new", "old"]],
        argumentDescriptions: ["the style of hud to choose"]
    };
}

function sh_groundpound_style(argument0) //gml_Script_sh_groundpound_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        default:
            arg1 = (!global.groundpoundstyle)
            break
    }

    global.groundpoundstyle = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "groundpoundstyle", arg1)
    ini_close()
}

function meta_groundpound_style() //gml_Script_meta_groundpound_style
{
    return 
    {
        description: "switches Groundpound style",
        arguments: ["<style>"],
        suggestions: [["new", "old"]],
        argumentDescriptions: ["the style of freefall to choose"]
    };
}

function sh_toggle_heatmeter(argument0) //gml_Script_sh_toggle_heatmeter
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.heatmeteroption)
            break
    }

    global.heatmeteroption = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "heat", arg1)
    ini_close()
}

function meta_toggle_heatmeter() //gml_Script_meta_toggle_heatmeter
{
    return 
    {
        description: "toggles heat meter",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles heat meter"]
    };
}

function sh_hitstun_timer(argument0) //gml_Script_sh_hitstun_timer
{
    var arg1 = argument0[1]
    global.defaulttime = real(string_digits(arg1))
    ini_open("saveData.ini")
    ini_write_real("Option", "secrethitstuntimer", real(string_digits(arg1)))
    ini_close()
}

function meta_hitstun_timer() //gml_Script_meta_hitstun_timer
{
    return 
    {
        description: "changes standard hitstun timer",
        arguments: ["<time>"],
        suggestions: [[]],
        argumentDescriptions: ["hitstun timer value (default: 70)"]
    };
}

function sh_voice_frequency(argument0) //gml_Script_sh_voice_frequency
{
    var arg1 = argument0[1]
    global.quipsfrequency = real(string_digits(arg1))
    ini_open("saveData.ini")
    ini_write_real("Option", "quips", real(string_digits(arg1)))
    ini_close()
}

function meta_voice_frequency() //gml_Script_meta_voice_frequency
{
    return 
    {
        description: "changes frequency of quips and voice acting",
        arguments: ["<time>"],
        suggestions: [[]],
        argumentDescriptions: ["changes frequency of quips (default: 0)"]
    };
}

function sh_escape(argument0) //gml_Script_sh_escape
{
    var arg0 = string(argument0[1])
    var arg1 = argument0[2]
    var arg2 = argument0[3]
    switch arg0
    {
        case "true":
        case "1":
            arg0 = true
            break
        case "false":
        case "0":
            arg0 = false
            break
        default:
            arg0 = (!global.panic)
            break
    }

    global.panic = arg0
    global.minutes = real(string_digits(arg1))
    global.seconds = real(string_digits(arg2))
    if instance_exists(obj_minipillar)
    {
        with (obj_minipillar)
            fadetopanic = 1
    }
    if instance_exists(obj_reverseminipillar)
    {
        with (obj_reverseminipillar)
            fadetopanic = 1
    }
    global.wave = 0
    global.maxwave = (global.minutes * 60 + global.seconds) * 60
    if (global.panicbg == true)
        scr_panicbg_init()
    obj_camera.alarm[1] = 60
    if (!instance_exists(obj_panicchanger))
        instance_create(x, y, obj_panicchanger)
}

function meta_escape() //gml_Script_meta_escape
{
    return 
    {
        description: "activates escape and sets escape time",
        arguments: ["<bool>", "<min>", "<sec>"],
        suggestions: [["true", "false"], [], []],
        argumentDescriptions: ["activate/deactivate escape", "set minutes", "set seconds"]
    };
}

function sh_timeattack(argument0) //gml_Script_sh_timeattack
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.timeattack)
            break
    }

    global.timeattack = arg1
}

function meta_timeattack() //gml_Script_meta_timeattack
{
    return 
    {
        description: "toggles timeattack",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles timeattack"]
    };
}

function sh_toggle_collisions(argument0) //gml_Script_sh_toggle_collisions
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.showcollisions)
            break
    }

    global.showcollisions = arg1
    toggle_collision_function()
}

function meta_toggle_collisions() //gml_Script_meta_toggle_collisions
{
    return 
    {
        description: "toggles collision object visibility",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles visibility"]
    };
}

function toggle_collision_function() //gml_Script_toggle_collision_function
{
    if (!variable_global_exists("showcollisionarray"))
    {
        var i = 0
        global.showcollisionarray[i++] = 68
        global.showcollisionarray[i++] = 120
        global.showcollisionarray[i++] = 121
        global.showcollisionarray[i++] = 122
        global.showcollisionarray[i++] = 124
        global.showcollisionarray[i++] = 185
        global.showcollisionarray[i++] = 187
        global.showcollisionarray[i++] = 186
        global.showcollisionarray[i++] = 183
        global.showcollisionarray[i++] = 184
        global.showcollisionarray[i++] = 71
        global.showcollisionarray[i++] = 392
        global.showcollisionarray[i++] = 159
        global.showcollisionarray[i++] = 48
        global.showcollisionarray[i++] = 34
    }
    var array = global.showcollisionarray
    var length = array_length(array)
    for (i = length - 1; i >= 0; i--)
    {
        with (array[i])
        {
            if (object_index == array[i])
                visible = global.showcollisions
        }
    }
    layer_set_visible("Tiles_Solid", global.showcollisions)
}

function sh_toggle_debugmode(argument0) //gml_Script_sh_toggle_debugmode
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.debugmode)
            break
    }

    global.debugmode = arg1
}

function meta_toggle_debugmode() //gml_Script_meta_toggle_debugmode
{
    return 
    {
        description: "toggles debugmode",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles debugmode"]
    };
}

function sh_collect_style(argument0) //gml_Script_sh_collect_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        default:
            arg1 = (!global.collectstyle)
            break
    }

    global.collectstyle = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "collectstyle", arg1)
    ini_close()
}

function meta_collect_style() //gml_Script_meta_collect_style
{
    return 
    {
        description: "switches Collectable style",
        arguments: ["<style>"],
        suggestions: [["new", "old"]],
        argumentDescriptions: ["the style of collectables to choose"]
    };
}

function sh_titlescreen_style(argument0) //gml_Script_sh_titlescreen_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        default:
            arg1 = (!global.newtitlescreen)
            break
    }

    global.newtitlescreen = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "newtitlescreen", arg1)
    ini_close()
    if (room == New_Realtitlescreen || room == Realtitlescreen)
    {
        if (room != global.roomstart[global.newtitlescreen])
            room = global.roomstart[global.newtitlescreen]
        with (obj_player)
            state = (8 << 0)
    }
}

function meta_titlescreen_style() //gml_Script_meta_titlescreen_style
{
    return 
    {
        description: "switches Titlescreen style",
        arguments: ["<style>"],
        suggestions: [["new", "old"]],
        argumentDescriptions: ["the style of Titlescreen to choose"]
    };
}

function sh_sjumpcancel_style(argument0) //gml_Script_sh_sjumpcancel_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        default:
            arg1 = (!global.newsjumpcancel)
            break
    }

    global.newsjumpcancel = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "newsjumpcancel", arg1)
    ini_close()
}

function meta_sjumpcancel_style() //gml_Script_meta_sjumpcancel_style
{
    return 
    {
        description: "switches Super Jump Cancel style",
        arguments: ["<style>"],
        suggestions: [["new", "old"]],
        argumentDescriptions: ["the style of Sjumpcancel to choose"]
    };
}

function sh_wallclimb_style(argument0) //gml_Script_sh_wallclimb_style
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "new":
            arg1 = true
            break
        case "old":
            arg1 = false
            break
        case "older":
            arg1 = 2
            break
        default:
            arg1 = (!global.wallrunstyle)
            break
    }

    global.wallrunstyle = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "wallrunstyle", arg1)
    ini_close()
}

function meta_wallclimb_style() //gml_Script_meta_wallclimb_style
{
    return 
    {
        description: "switches Wall Climbing style",
        arguments: ["<style>"],
        suggestions: [["new", "old", "older"]],
        argumentDescriptions: ["the style of wallclimb to choose"]
    };
}

function sh_toggle_pitchshift(argument0) //gml_Script_sh_toggle_pitchshift
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.pitchshift)
            break
    }

    global.pitchshift = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "pitchshift", arg1)
    ini_close()
}

function meta_toggle_pitchshift() //gml_Script_meta_toggle_pitchshift
{
    return 
    {
        description: "toggles pitch shifting",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles pitch shifting"]
    };
}

function sh_toggle_attackstyle(argument0) //gml_Script_sh_toggle_attackstyle
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.attackstyle)
            break
    }

    global.attackstyle = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "attackstyle", arg1)
    ini_close()
}

function meta_toggle_attackstyle() //gml_Script_meta_toggle_attackstyle
{
    return 
    {
        description: "toggles attack style",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles grabbing and shoulderbash"]
    };
}

function sh_toggle_escapecollect(argument0) //gml_Script_sh_toggle_escapecollect
{
    var arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.escapecollect)
            break
    }

    global.escapecollect = arg1
    ini_open("saveData.ini")
    ini_write_real("Option", "escapecollect", arg1)
    ini_close()
}

function meta_toggle_escapecollect() //gml_Script_meta_toggle_escapecollect
{
    return 
    {
        description: "toggles escape collect style",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles escape collectable style"]
    };
}

