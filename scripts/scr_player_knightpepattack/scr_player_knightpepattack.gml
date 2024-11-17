function scr_player_knightpepattack() //gml_Script_scr_player_knightpepattack
{
    move = key_left + key_right
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    if (!grounded)
    {
        hsp = move * movespeed
        if (move != xscale && momemtum == 1 && movespeed != 0)
            movespeed -= 0.05
        if (movespeed == 0)
            momemtum = 0
        if ((move == 0 && momemtum == 0) || scr_solid((x + hsp), y))
        {
            movespeed = 0
            mach2 = 0
        }
        if (move != 0 && movespeed < 7)
            movespeed += 0.25
        if (movespeed > 7)
            movespeed -= 0.05
        if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
            movespeed = 0
        if (dir != xscale)
        {
            mach2 = 0
            dir = xscale
            movespeed = 0
        }
        if (move == (-xscale))
        {
            mach2 = 0
            movespeed = 0
            momemtum = 0
        }
        if (move != 0)
            xscale = move
        if (vsp < 0)
        {
            movespeed = approach(movespeed, 0, 0.2)
            vsp = clamp(vsp, -5, 0)
        }
        else
        {
            vsp = clamp((vsp + 0.25), 15, 20)
            if (!instance_exists(superslameffectid))
            {
                with (instance_create(x, y, obj_superslameffect))
                {
                    playerid = other.object_index
                    other.superslameffectid = id
                }
            }
        }
        knightpoundbuffer = approach(knightpoundbuffer, 100, 1)
    }
    if (sprite_index == spr_knightpepattack && (!(place_meeting(x, (y + 1), obj_destructibles))) && scr_solid(x, (y + 1)) && (!scr_slope()) && vsp > 0)
    {
        knightpoundbuffer = 0
        with (obj_baddie)
        {
            if (grounded && shake != 1 && state != 109 && markedfordeath != 1 && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), ((__view_get(0, 0)) + (__view_get(2, 0))), ((__view_get(1, 0)) + (__view_get(3, 0)))))
            {
                state = 106
                if (stunned < 60)
                    stunned = 60
                image_xscale *= -1
                vsp = -11
                hsp = 0
                momentum = 0
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = 30 / room_speed
        }
        combo = 0
        bounce = 0
        image_index = 0
        freefallstart = 0
        momemtum = 0
        scr_soundeffect(sfx_groundpound)
        with (instance_create(x, y, obj_landcloud))
        {
            playerid = other.id
            image_xscale = other.xscale
        }
        movespeed = clamp(movespeed, 0, 3)
        sprite_index = spr_knightpepland
        state = (24 << 0)
    }
    if (scr_slope() && vsp > 0)
    {
        with (obj_baddie)
        {
            if (grounded && shake != 1 && state != 109 && markedfordeath != 1 && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), ((__view_get(0, 0)) + (__view_get(2, 0))), ((__view_get(1, 0)) + (__view_get(3, 0)))))
            {
                state = 106
                if (stunned < 60)
                    stunned = 60
                image_xscale *= -1
                vsp = -11
                hsp = 0
                momentum = 0
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = 30 / room_speed
        }
        scr_soundeffect(sfx_groundpound)
        knightpoundbuffer = 0
        if (state != (18 << 0))
            var _speed = abs(y - knightmaxy)
        knightslidespeed += _speed
        with (instance_place(x, (y + 1), obj_slope))
            other.xscale = (-sign(image_xscale))
        if (tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (34 << 0))
        {
            var _slope = scr_tileslope(x, (y + 1))
            if (_slope[0] != -4)
            {
                var _xscale = _slope[1]
                xscale = (-sign(_xscale))
            }
        }
        state = 18
        sprite_index = spr_knightpepdownslope
    }
    if ((place_meeting(x, (y + 1), obj_iceblock) || place_meeting(x, (y + 1), obj_iceblockminiboss) || place_meeting(x, (y + 1), obj_bigiceblock)) && vsp > 0)
    {
        with (obj_baddie)
        {
            if (grounded && shake != 1 && state != 109 && markedfordeath != 1 && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), ((__view_get(0, 0)) + (__view_get(2, 0))), ((__view_get(1, 0)) + (__view_get(3, 0)))))
            {
                state = 106
                if (stunned < 60)
                    stunned = 60
                image_xscale *= -1
                vsp = -11
                hsp = 0
                momentum = 0
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = 30 / room_speed
        }
        scr_soundeffect(sfx_groundpound)
        knightpoundbuffer = 0
        _speed = abs((y - knightmaxy) / 2)
        knightslidespeed += _speed
        with (instance_place(x, (y + 1), obj_slope))
            other.xscale = (-sign(image_xscale))
        if (tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (34 << 0))
        {
            _slope = scr_tileslope(x, (y + 1))
            if (_slope[0] != -4)
            {
                _xscale = _slope[1]
                xscale = (-sign(_xscale))
            }
        }
        state = 18
        sprite_index = spr_knightpepcharge
    }
    image_speed = 0.35
}

