var roomname = room_get_name(room)
if (room != hub_room1 && room != hub_room2 && room != hub_room3 && room != cowboytask && room != Tutorialtrap && room != Titlescreen)
    fadeoff = audio_sound_get_track_position(global.music)
else
    fadeoff = 0
if (global.panic == 1 && obj_pause.pause == 0)
{
    if (global.lapping == 0)
    {
        if ((!audio_is_playing(mu_pizzatime)) && (!audio_is_playing(mu_noiseescape)) && (!audio_is_playing(mu_snickescape)) && (!audio_is_playing(mu_pizzelleescape)) && (!audio_is_playing(mu_vigiescape)) && (!audio_is_playing(mu_mansionescape)))
        {
            scr_soundstopall()
            if (obj_player1.character == "P")
            {
                scr_sound(mu_pizzatime)
                pausedmusic = 82
            }
            else if (obj_player1.character == "N")
            {
                scr_sound(mu_noiseescape)
                pausedmusic = 105
            }
            else if (obj_player1.character == "S")
            {
                scr_sound(mu_snickescape)
                pausedmusic = 112
            }
            else if (obj_player1.character == "V")
            {
                scr_sound(mu_vigiescape)
                pausedmusic = 131
            }
            else if (obj_player1.character == "PM")
            {
                scr_sound(mu_mansionescape)
                pausedmusic = 141
            }
            else
            {
                scr_sound(mu_pizzelleescape)
                pausedmusic = 152
            }
        }
    }
    else if (global.lapping == 1)
    {
        if ((!audio_is_playing(mu_pizzatimeremix)) && (!audio_is_playing(mu_noiseescaperequiem)) && (!audio_is_playing(mu_snickescaperequiem)) && (!audio_is_playing(mu_vigiescaperequiem)) && (!audio_is_playing(mu_desertescape)) && (!audio_is_playing(mu_mansionescape)) && (!audio_is_playing(mu_factoryescape)) && (!audio_is_playing(mu_sewerescape)) && (!audio_is_playing(mu_pizzelleescaperequiem)) && (!audio_is_playing(mu_freezerescape)))
        {
            scr_soundstopall()
            if (string_letters(roomname) == "desert" && global.extraescapemusic == 1)
            {
                scr_sound(mu_desertescape)
                pausedmusic = 140
            }
            else if ((string_letters(roomname) == "mansion" || string_letters(roomname) == "medieval") && global.extraescapemusic == 1)
            {
                scr_sound(mu_mansionescape)
                pausedmusic = 141
            }
            else if (string_letters(roomname) == "factory" && global.extraescapemusic == 1)
            {
                scr_sound(mu_factoryescape)
                pausedmusic = 142
            }
            else if (string_letters(roomname) == "sewer" && global.extraescapemusic == 1)
            {
                scr_sound(mu_sewerescape)
                pausedmusic = 143
            }
            else if (string_letters(roomname) == "freezer" && global.extraescapemusic == 1)
            {
                scr_sound(mu_freezerescape)
                pausedmusic = 144
            }
            else if (obj_player1.character == "P")
            {
                scr_sound(mu_pizzatimeremix)
                pausedmusic = 137
            }
            else if (obj_player1.character == "N")
            {
                scr_sound(mu_noiseescaperequiem)
                pausedmusic = 129
            }
            else if (obj_player1.character == "S")
            {
                scr_sound(mu_snickescaperequiem)
                pausedmusic = 136
            }
            else if (obj_player1.character == "V")
            {
                scr_sound(mu_vigiescaperequiem)
                pausedmusic = 138
            }
            else
            {
                scr_sound(mu_pizzelleescaperequiem)
                pausedmusic = 151
            }
        }
    }
    else if (global.lapping == 2)
    {
        if ((!audio_is_playing(mu_pizzatimeremix)) && (!audio_is_playing(mu_pizzelleescaperequiem)) && (!audio_is_playing(mu_noiseescaperequiem)) && (!audio_is_playing(mu_snickescaperequiem)) && (!audio_is_playing(mu_vigiescaperequiem)))
        {
            scr_soundstopall()
            if (obj_player1.character == "P")
            {
                scr_sound(mu_pizzatimeremix)
                pausedmusic = 137
            }
            else if (obj_player1.character == "N")
            {
                scr_sound(mu_noiseescaperequiem)
                pausedmusic = 129
            }
            else if (obj_player1.character == "S")
            {
                scr_sound(mu_snickescaperequiem)
                pausedmusic = 136
            }
            else if (obj_player1.character == "V")
            {
                scr_sound(mu_vigiescaperequiem)
                pausedmusic = 138
            }
            else
            {
                scr_sound(mu_pizzelleescaperequiem)
                pausedmusic = 151
            }
        }
    }
    else if (global.lapping >= 3)
    {
        if (!audio_is_playing(mu_pizzamayhem))
        {
            scr_soundstopall()
            scr_sound(mu_pizzamayhem)
            pausedmusic = 139
        }
    }
}
if (global.panic == 1 && obj_pause.pause == 0 && global.minutes <= 0 && global.seconds <= 0 && global.timeattack == false)
{
    if (!audio_is_playing(mu_escaperumble))
    {
        global.escaperumblemusic = audio_play_sound(mu_escaperumble, 10, true)
        audio_sound_gain(global.escaperumblemusic, (0.6 * global.musicvolume), 0)
    }
}
if (string_letters(roomname) == "beach")
{
    if ((!audio_is_playing(mu_beachintro)) && playintro == false)
    {
        if ((!audio_is_playing(mu_beach)) && playintro == false && nolag == 0)
        {
            nolag = 1
            scr_sound(mu_beach)
            audio_sound_set_track_position(global.music, 0)
            pausedmusic = 0
        }
    }
}
if (global.miniboss == 0 && audio_is_playing(mu_miniboss))
    audio_stop_sound(mu_miniboss)
if ((!audio_is_playing(mu_snickchallenge)) && global.snickchallenge == 1 && obj_pause.pause == 0 && global.minutes >= 2 && obj_camera.ded == 0)
{
    scr_soundstopall()
    scr_sound(mu_snickchallenge)
    pausedmusic = 102
}
else if ((!audio_is_playing(mu_snickchallengeend)) && global.snickchallenge == 1 && obj_pause.pause == 0 && global.minutes < 2 && obj_camera.ded == 0)
{
    scr_soundstopall()
    scr_sound(mu_snickchallengeend)
    pausedmusic = 103
}
if (room == strongcold_miniboss && global.miniboss == 1)
{
    if (!audio_is_playing(mu_miniboss))
    {
        scr_soundstopall()
        scr_sound(mu_miniboss)
        scr_soundeffect(sfx_scream5)
        pausedmusic = 80
    }
}
else if (room == strongcold_endscreen)
{
    if (!audio_is_playing(mu_entrance))
    {
        scr_soundstopall()
        scr_sound(mu_entrance)
        pausedmusic = 86
    }
}
if instance_exists(obj_johnpillar)
{
    if ((!audio_is_playing(mu_scary)) && obj_pause.pause == 0)
    {
        global.scarysound = audio_play_sound(mu_scary, 10, true)
        audio_sound_gain(global.scarysound, (0 * global.musicvolume), 0)
    }
    if (audio_is_playing(global.scarysound) && obj_pause.pause == 0)
    {
        with (obj_johnpillar)
        {
            var player = instance_nearest(x, y, obj_player)
            if (global.coop == false)
                player = obj_player1
            if point_in_rectangle(player.x, player.y, (x - 424), (y - 64), (x + 424), (y + 288))
            {
                audio_sound_gain(global.music, (0 * global.musicvolume), 2000)
                audio_sound_gain(global.scarysound, (0.6 * global.musicvolume), 2000)
            }
            else if point_in_rectangle(player.x, player.y, (x - 824), (y - 96), (x + 824), (y + 320))
            {
                audio_sound_gain(global.music, (0.15 * global.musicvolume), 2000)
                audio_sound_gain(global.scarysound, (0.5 * global.musicvolume), 2000)
            }
            else
            {
                audio_sound_gain(global.music, (0.6 * global.musicvolume), 2000)
                audio_sound_gain(global.scarysound, (0.15 * global.musicvolume), 2000)
            }
        }
    }
}
else if audio_is_playing(global.scarysound)
{
    audio_sound_gain(global.scarysound, (0 * global.musicvolume), 2000)
    if (audio_sound_get_gain(global.scarysound) == 0)
    {
        audio_stop_sound(global.scarysound)
        global.scarysound = -4
    }
    audio_sound_gain(global.music, (0.6 * global.musicvolume), 2000)
}
else
{
    audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
    audio_sound_gain(global.music2, (0.6 * global.musicvolume), 0)
}
if (audio_is_playing(mu_ruin) && audio_is_playing(mu_ruinbmix))
{
    if (global.ruinmusic == 0)
    {
        audio_sound_gain(mu_ruin, 1, 0)
        audio_sound_gain(mu_ruinbmix, 0, 0)
    }
    else if (global.ruinmusic == 1)
    {
        audio_sound_gain(mu_ruin, 0, 25000)
        audio_sound_gain(mu_ruinbmix, 1, 21000)
    }
}
if (audio_is_playing(mu_factory1) && audio_is_playing(mu_factory2))
{
    if (global.factorymusic == 0)
    {
        audio_sound_gain(mu_ruin, 1, 0)
        audio_sound_gain(mu_ruinbmix, 0, 0)
    }
    else if (global.factorymusic == 1)
    {
        audio_sound_gain(mu_ruin, 0, 25000)
        audio_sound_gain(mu_ruinbmix, 1, 21000)
    }
}
var _player = focused_player()
var pitchspd = clamp((_player.movespeed / 9.5 * 0.8), 0.7, 1.5)
if (global.pitchshift == 1)
{
    with (_player)
    {
        if (state == (24 << 0))
            audio_sound_pitch(global.music, 0.9)
        else if (state == (2 << 0) || state == (18 << 0))
        {
            if (sprite_index != spr_tumblestart)
                audio_sound_pitch(global.music, pitchspd)
            else
                audio_sound_pitch(global.music, 1.2)
        }
        else
            audio_sound_pitch(global.music, 1)
    }
}
