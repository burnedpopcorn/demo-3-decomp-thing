if instance_exists(obj_pausefadeout)
    instance_destroy(obj_pausefadeout)
if (fadealpha > 1)
{
    while (global.flushtextures == true)
    {
        draw_texture_flush()
        sprite_prefetch_multi(global.prefetcharray)
        global.flushtextures = false
        show_debug_message("Flushed Textures")
    }
    global.geromeopen = false
    fadein = 1
    if instance_exists(obj_player)
    {
        if (acttransition == 1)
        {
            with (obj_music)
                fadeoff = 0
        }
        if (room != obj_player1.targetRoom)
            room_goto(obj_player1.targetRoom)
        else if (once == false)
        {
            once = true
            room_restart()
        }
        if (global.coop == 1)
        {
            if (room != obj_player2.targetRoom)
                room_goto(obj_player2.targetRoom)
            else if (once == false)
            {
                once = true
                room_restart()
            }
        }
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player1)
    {
        if (other.fadein == 1 && (obj_player1.state == 78 || obj_player1.state == (127 << 0) || obj_player1.state == 64) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_doorblocked) || place_meeting(x, y, obj_geromedoor) || place_meeting(x, y, obj_keydoor) || place_meeting(x, y, obj_levelcomputer) || place_meeting(x, y, obj_startgate)))
        {
            state = 61
            image_index = 0
            if (global.coop == 1)
            {
                obj_player2.state = 61
                obj_player2.image_index = 0
            }
        }
        if (other.fadein == 1 && (obj_player1.state == 78 || obj_player1.state == (127 << 0) || obj_player1.state == 64) && place_meeting(x, y, obj_door2))
        {
            state = 0
            image_index = 0
            if (global.coop == 1)
            {
                obj_player2.state = 0
                obj_player2.image_index = 0
            }
        }
        if (other.fadein == 1 && obj_player1.state == 78 && (obj_player1.sprite_index == spr_downpizzabox || obj_player1.sprite_index == spr_uppizzabox))
        {
            state = 67
            if (global.coop == 1)
                obj_player2.state = 67
        }
    }
    if instance_exists(obj_player2)
    {
        with (obj_player2)
        {
            if (other.fadein == 1 && (obj_player2.state == 78 || obj_player2.state == (127 << 0) || obj_player2.state == 64) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_doorblocked) || place_meeting(x, y, obj_geromedoor) || place_meeting(x, y, obj_keydoor) || place_meeting(x, y, obj_levelcomputer) || place_meeting(x, y, obj_startgate)))
            {
                state = 61
                image_index = 0
                if (global.coop == 1)
                {
                    obj_player1.state = 61
                    obj_player1.image_index = 0
                }
            }
            if (other.fadein == 1 && (obj_player2.state == 78 || obj_player2.state == (127 << 0) || obj_player2.state == 64) && place_meeting(x, y, obj_door2))
            {
                state = 0
                image_index = 0
                if (global.coop == 1)
                {
                    obj_player1.state = 0
                    obj_player1.image_index = 0
                }
            }
            if (other.fadein == 1 && obj_player2.state == 78 && (obj_player2.sprite_index == spr_downpizzabox || obj_player2.sprite_index == spr_uppizzabox))
            {
                state = 67
                if (global.coop == 1)
                    obj_player1.state = 67
            }
        }
    }
}
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
