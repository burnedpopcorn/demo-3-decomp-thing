if (ds_list_find_index(global.saveroom, id) == -1)
{
    if place_meeting((x + 1), y, obj_rockblock)
    {
        with (instance_place((x + 1), y, obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting((x - 1), y, obj_rockblock)
    {
        with (instance_place((x - 1), y, obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting(x, (y + 1), obj_rockblock)
    {
        with (instance_place(x, (y + 1), obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting(x, (y - 1), obj_rockblock)
    {
        with (instance_place(x, (y - 1), obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting((x + 1), y, 2465)
    {
        with (instance_place((x + 1), y, 2465))
            alarm[1] = 8
    }
    if place_meeting((x - 1), y, 2465)
    {
        with (instance_place((x - 1), y, 2465))
            alarm[1] = 8
    }
    if place_meeting(x, (y + 1), 2465)
    {
        with (instance_place(x, (y + 1), 2465))
            alarm[1] = 8
    }
    if place_meeting(x, (y - 1), 2465)
    {
        with (instance_place(x, (y - 1), 2465))
            alarm[1] = 8
    }
    repeat (3)
    {
        with (instance_create((x + 32 + (random_range(-32, 32))), (y + 32 + (random_range(-32, 32))), obj_balloonpop))
        {
            image_speed = 0.35
            sprite_index = spr_destroyablecloud
            image_angle = choose(0, 90, 180, 270)
            vspeed = -3
        }
    }
    repeat (6)
    {
        with (instance_create((x + 32), (y + 32), obj_debris))
            sprite_index = spr_rockdebris
    }
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}
