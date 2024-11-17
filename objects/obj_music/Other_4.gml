ini_open("saveData.ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
if (global.panic == 0 && global.snickchallenge == 0)
{
    var roomname = room_get_name(room)
    if (room == Scootertransition)
    {
        if (!audio_is_playing(mu_characterselect))
        {
            scr_soundstopall()
            scr_sound(mu_characterselect)
            pausedmusic = 106
        }
    }
    if (string_letters(roomname) == "NewRealtitlescreen" || string_letters(roomname) == "Realtitlescreen")
    {
        if (!audio_is_playing(mu_title))
        {
            scr_soundstopall()
            scr_sound(mu_title)
            pausedmusic = 97
        }
    }
    if (string_letters(roomname) == "characterselect")
    {
        if (!audio_is_playing(mu_characterselect))
        {
            scr_soundstopall()
            scr_sound(mu_characterselect)
            pausedmusic = 106
        }
    }
    if (string_letters(roomname) == "hubroom" || room == Tutorialtrap || room == cowboytask || string_letters(roomname) == "Titlescreen")
    {
        if (!audio_is_playing(mu_hub))
        {
            scr_soundstopall()
            scr_sound(mu_hub)
            pausedmusic = 83
        }
    }
    if (room == hub_roomSNICK)
    {
        if (!audio_is_playing(mu_snickchallengeend))
        {
            scr_soundstopall()
            scr_sound(mu_snickchallengeend)
            pausedmusic = 103
        }
    }
    if (string_letters(roomname) == "PProom")
    {
        if (!audio_is_playing(mu_tutorial))
        {
            scr_soundstopall()
            scr_sound(mu_tutorial)
            pausedmusic = 98
        }
    }
    if (string_letters(roomname) == "golf" || string_letters(roomname) == "resto")
    {
        if (!audio_is_playing(mu_golf))
        {
            scr_soundstopall()
            scr_sound(mu_golf)
            pausedmusic = 130
        }
    }
    if ((string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret" || string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") && global.coop == 0)
    {
        if (obj_player1.character == "P")
        {
            if (!audio_is_playing(mu_entrance))
            {
                scr_soundstopall()
                scr_sound(mu_entrance)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = 86
            }
        }
        else if (obj_player1.character == "N")
        {
            if (!audio_is_playing(mu_entranceN))
            {
                scr_soundstopall()
                scr_sound(mu_entranceN)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = 110
            }
        }
        else if (obj_player1.character == "S")
        {
            if (!audio_is_playing(mu_entranceS))
            {
                scr_soundstopall()
                scr_sound(mu_entranceS)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = 111
            }
        }
        else if (obj_player1.character == "V")
        {
            if (!audio_is_playing(mu_entranceV))
            {
                scr_soundstopall()
                scr_sound(mu_entranceV)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = 126
            }
        }
        else if (!audio_is_playing(mu_entrancePZ))
        {
            scr_soundstopall()
            scr_sound(mu_entrancePZ)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 150
        }
    }
    if ((string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret" || string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") && global.coop == 1)
    {
        if (!audio_is_playing(mu_entrance2p))
        {
            scr_soundstopall()
            scr_sound(mu_entrance2p)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 115
        }
    }
    if (string_letters(roomname) == "dungeon")
    {
        if (!audio_is_playing(mu_dungeon))
        {
            scr_soundstopall()
            scr_sound(mu_dungeon)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 96
        }
    }
    if (string_letters(roomname) == "desert" || string_letters(roomname) == "olddesert")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("desert_" + string(i)) && i <= 11)
            {
                if (!audio_is_playing(mu_desert))
                {
                    scr_soundstopall()
                    scr_sound(mu_desert)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 79
                }
            }
            else if (roomname == ("desert_" + string(i)) && i > 11)
            {
                if (!audio_is_playing(mu_ufo))
                {
                    scr_soundstopall()
                    scr_sound(mu_ufo)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 81
                }
            }
        }
    }
    if (string_letters(roomname) == "factory")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("factory_" + string(i)) && i <= 5)
            {
                if (!audio_is_playing(mu_factory1))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory1)
                    pausedmusic = 116
                }
            }
            else if (roomname == ("factory_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_factory2))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    pausedmusic = 117
                }
            }
        }
    }
    if (string_letters(roomname) == "beach")
    {
        if ((!audio_is_playing(mu_beach)) && playintro == true)
        {
            if (!audio_is_playing(mu_beachintro))
            {
                scr_soundstopall()
                playintro = false
                global.music = audio_play_sound(mu_beachintro, 10, false)
                ini_open("saveData.ini")
                global.musicvolume = ini_read_real("Option", "musicvolume", 1)
                ini_close()
                audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
                audio_sound_set_track_position(global.music, 0)
                pausedmusic = 164
            }
        }
        if ((!audio_is_playing(mu_beach)) && (!audio_is_playing(mu_beachintro)) && playintro == false)
        {
            scr_soundstopall()
            scr_sound(mu_beach)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 0
        }
    }
    if (string_letters(roomname) == "strongcold" || room == strongcold_miniboss)
    {
        for (i = 0; i < 20; i++)
        {
            if ((roomname == ("strongcold_" + string(i)) && i > 1) || room == strongcold_miniboss)
            {
                if (!audio_is_playing(mu_strongcold))
                {
                    scr_soundstopall()
                    scr_sound(mu_strongcold)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 107
                }
            }
            else if (roomname == "strongcold_1" && room != strongcold_miniboss)
            {
                if (!audio_is_playing(mu_scary))
                {
                    scr_soundstopall()
                    scr_sound(mu_scary)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 104
                }
            }
        }
    }
    if (string_letters(roomname) == "medieval")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("medieval_" + string(i)) && i <= 2)
            {
                if (!audio_is_playing(mu_medievalentrance))
                {
                    scr_soundstopall()
                    scr_sound(mu_medievalentrance)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 99
                }
            }
            else if ((roomname == ("medieval_" + string(i)) && i > 2 && i <= 5) || room == medieval_3_1)
            {
                if (!audio_is_playing(mu_medievalremix))
                {
                    scr_soundstopall()
                    scr_sound(mu_medievalremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 89
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_medieval))
                {
                    scr_soundstopall()
                    scr_sound(mu_medieval)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 87
                }
            }
        }
    }
    if (string_letters(roomname) == "sanctum")
    {
        if (!audio_is_playing(mu_sanctum))
        {
            scr_soundstopall()
            scr_sound(mu_sanctum)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 4
        }
    }
    if (string_letters(roomname) == "pinball")
    {
        if (!audio_is_playing(mu_pinball))
        {
            scr_soundstopall()
            scr_sound(mu_pinball)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 7
        }
    }
    if (string_letters(roomname) == "ruin")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("ruin_" + string(i)) && i <= 6)
            {
                if ((!audio_is_playing(mu_ruin)) && global.ruinmusic == 0)
                {
                    scr_soundstopall()
                    scr_sound(mu_ruin)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 100
                    audio_sound_gain(mu_ruin, 1, 0)
                    audio_sound_gain(mu_ruinbmix, 1, 0)
                }
                else if ((!audio_is_playing(mu_ruinbmix)) && global.ruinmusic == 1)
                {
                    scr_soundstopall()
                    scr_sound(mu_ruinbmix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 114
                    audio_sound_gain(mu_ruinbmix, 1, 0)
                }
            }
            else if (roomname == ("ruin_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_ruinremix))
                {
                    scr_soundstopall()
                    scr_sound(mu_ruinremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 101
                }
            }
        }
    }
    if (string_letters(roomname) == "chateau")
    {
        if (!audio_is_playing(mu_chateau))
        {
            scr_soundstopall()
            scr_sound(mu_chateau)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 88
        }
    }
    if (string_letters(roomname) == "ruinsecret" || string_letters(roomname) == "sanctumsecret")
    {
        if (!audio_is_playing(mu_ruinsecret))
        {
            scr_soundstopall()
            scr_sound(mu_ruinsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 108
        }
    }
    if (string_letters(roomname) == "strongcoldsecret" || string_letters(roomname) == "dungeonsecret")
    {
        if (!audio_is_playing(mu_dungeonsecret))
        {
            scr_soundstopall()
            scr_sound(mu_dungeonsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 109
        }
    }
    if (string_letters(roomname) == "chateausecret" || string_letters(roomname) == "medievalsecret")
    {
        if (!audio_is_playing(mu_medievalsecret))
        {
            scr_soundstopall()
            scr_sound(mu_medievalsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 84
        }
    }
    if (string_letters(roomname) == "desertsecret" && global.desertnight != 1)
    {
        if (!audio_is_playing(mu_desertsecret))
        {
            scr_soundstopall()
            scr_sound(mu_desertsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 113
        }
    }
    if (string_letters(roomname) == "kungfu")
    {
        if (!audio_is_playing(mu_kungfu))
        {
            scr_soundstopall()
            scr_sound(mu_kungfu)
            pausedmusic = 148
        }
    }
    if (string_letters(roomname) == "factory")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("factory_" + string(i)) && i <= 6)
            {
                if ((!audio_is_playing(mu_factory1)) && global.factorymusic == 0)
                {
                    scr_soundstopall()
                    scr_sound(mu_factory1)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 116
                    audio_sound_gain(mu_factory1, 1, 0)
                    audio_sound_gain(mu_factory1, 1, 0)
                }
                else if ((!audio_is_playing(mu_factory2)) && global.factorymusic == 1)
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 117
                    audio_sound_gain(mu_factory2, 1, 0)
                }
            }
            else if (roomname == ("factory_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_factory2))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 117
                }
            }
        }
    }
    if (string_letters(roomname) == "freezer")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("freezer_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_freezer1))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer1)
                    pausedmusic = 122
                }
            }
            else if (roomname == ("freezer_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_freezer2))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer2)
                    pausedmusic = 123
                }
            }
        }
    }
    if (room == room_test1)
    {
        if (!audio_is_playing(mu_freezer2))
        {
            scr_soundstopall()
            scr_sound(mu_freezer2)
            pausedmusic = 123
        }
    }
    if (room == room_test4 || room == room_test3)
    {
        if (!audio_is_playing(mu_desert))
        {
            scr_soundstopall()
            scr_sound(mu_desert)
            pausedmusic = 79
        }
    }
    if (room == room_test5)
    {
        if (!audio_is_playing(mu_freezer2))
        {
            scr_soundstopall()
            scr_sound(mu_freezer2)
            pausedmusic = 123
        }
    }
    if (room == room_test6)
    {
        if (!audio_is_playing(mu_forest))
        {
            scr_soundstopall()
            scr_sound(mu_forest)
            pausedmusic = 124
        }
    }
    audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
}
