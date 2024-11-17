if (active == true)
{
    if (keyboard_check_pressed(vk_return) && input != "")
    {
        var _commands = self.string_split(input, " ")
        var _cmd = ds_list_find_value(_commands, 0)
        switch _cmd
        {
            case "room_goto":
                break
            case "fart":
            case "poop":
            case "crap":
            case "fard":
            case "shart":
            case "shit":
                audio_sound_gain(audio_play_sound(sfx_fart, 1, false), (1 * global.soundeffectsvolume), 0)
                break
            case "instance_create":
                break
            case "help":
                if (ds_list_find_value(_commands, 1) == undefined)
                    var arg1 = 0
                else
                    arg1 = ds_list_find_value(_commands, 1)
                var page = clamp(real(string_digits(arg1)), 1, pagenumber)
                var first = pagelength * (page - 1)
                var last = clamp((pagelength * page), 1, array_length_1d(commands))
                commandhistory = "COMMAND LIST (PAGE " + string(page) + " OF " + string(pagenumber) + ")#"
                for (var i = first; i < last; i++)
                    commandhistory += (string(commands[i]) + "#")
                break
            case "escape":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = 0
                else
                    arg1 = ds_list_find_value(_commands, 1)
                if (ds_list_find_value(_commands, 2) == undefined)
                    var arg2 = 10
                else
                    arg2 = ds_list_find_value(_commands, 2)
                global.panic = (!global.panic)
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
                break
            case "standardhitstun":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = 70
                else
                    arg1 = ds_list_find_value(_commands, 1)
                global.defaulttime = real(string_digits(arg1))
                ini_open("saveData.ini")
                ini_write_real("Option", "secrethitstuntimer", real(string_digits(arg1)))
                ini_close()
                break
            case "voicefrequency":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = 0
                else
                    arg1 = ds_list_find_value(_commands, 1)
                global.quipsfrequency = real(string_digits(arg1))
                ini_open("saveData.ini")
                ini_write_real("Option", "quips", real(string_digits(arg1)))
                ini_close()
                break
            case "togglecollision":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!showcollisions)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!showcollisions)
                }

                showcollisions = arg1
                event_user(0)
                break
            case "newhud":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!global.newhud)
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
                break
            case "newtitlescreen":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!global.newtitlescreen)
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
                break
            case "newsjumpcancel":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!global.newsjumpcancel)
                }

                global.newsjumpcancel = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "newsjumpcancel", arg1)
                ini_close()
                break
            case "collectstyle":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "old":
                        arg1 = 0
                        arg1 = 1
                    case "new":
                        arg1 = 1
                    default:
                        arg1 = (!global.collectstyle)
                }

                global.collectstyle = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "collectstyle", arg1)
                ini_close()
                break
            case "pitchshift":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "on":
                        arg1 = 1
                        arg1 = 0
                    case "off":
                        arg1 = 0
                    default:
                        arg1 = (!global.pitchshift)
                }

                global.pitchshift = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "pitchshift", arg1)
                ini_close()
                break
            case "escapecollect":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "new":
                        arg1 = 1
                        arg1 = 0
                    case "old":
                        arg1 = 0
                    default:
                        arg1 = (!global.escapecollect)
                }

                global.escapecollect = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "escapecollect", arg1)
                ini_close()
                break
            case "wallrunstyle":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "new":
                        arg1 = 0
                        arg1 = 1
                        arg1 = 2
                    case "old":
                        arg1 = 1
                        arg1 = 2
                    case "older":
                        arg1 = 2
                    default:
                        arg1 = (!global.wallrunstyle)
                }

                global.wallrunstyle = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "wallrunstyle", arg1)
                ini_close()
                break
            case "groundpoundstyle":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "old":
                        arg1 = 0
                        arg1 = 1
                    case "new":
                        arg1 = 1
                    default:
                        arg1 = (!global.groundpoundstyle)
                }

                global.groundpoundstyle = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "groundpoundstyle", arg1)
                ini_close()
                break
            case "attackstyle":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "0":
                        arg1 = 0
                        arg1 = 1
                    case "1":
                        arg1 = 1
                    default:
                        arg1 = (!global.attackstyle)
                }

                global.attackstyle = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "attackstyle", arg1)
                ini_close()
                break
            case "divestyle":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "old":
                        arg1 = 0
                        arg1 = 1
                    case "new":
                        arg1 = 1
                    default:
                        arg1 = (!global.divestyle)
                }

                global.divestyle = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "divestyle", arg1)
                ini_close()
                break
            case "destroyablecollect":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "pizzaslice":
                        arg1 = 0
                        arg1 = 1
                    case "topping":
                        arg1 = 1
                    default:
                        arg1 = (!global.destroyablecollect)
                }

                global.destroyablecollect = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "destroyablecollect", arg1)
                ini_close()
                break
            case "ratmode":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.newhud)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "off":
                        arg1 = false
                        arg1 = true
                    case "on":
                        arg1 = true
                    default:
                        arg1 = (!global.ratmode)
                }

                global.ratmode = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "ratmode", arg1)
                ini_close()
                break
            case "debugmode":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.debugmode)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!global.debugmode)
                }

                global.debugmode = arg1
                break
            case "heatmeter":
                if (ds_list_find_value(_commands, 1) == undefined)
                    arg1 = (!global.heatmeteroption)
                else
                    arg1 = ds_list_find_value(_commands, 1)
                switch arg1
                {
                    case "true":
                        arg1 = true
                        arg1 = false
                    case "false":
                        arg1 = false
                    default:
                        arg1 = (!global.heatmeteroption)
                }

                global.heatmeteroption = arg1
                ini_open("saveData.ini")
                ini_write_real("Option", "heat", arg1)
                ini_close()
                break
            case "changecharacter":
                break
            default:
                show_debug_message("FAIL TBH!")
        }

        input = ""
        keyboard_string = ""
    }
}
