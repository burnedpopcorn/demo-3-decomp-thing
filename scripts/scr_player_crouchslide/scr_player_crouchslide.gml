function scr_player_crouchslide() //scr_player_crouchslide
{
    if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
        hsp = xscale * movespeed
    else if place_meeting(x, (y + 1), obj_railh)
        hsp = xscale * movespeed - 5
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = xscale * movespeed + 5
    if (movespeed >= 0 && grounded)
        movespeed -= 0.2
    mask_index = spr_crouchmask
    if key_jump
        input_buffer_jump = 0
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 10
        jumpstop = 1
    }
    if (input_buffer_jump < 8 && grounded && (!(scr_solid((x + 27), (y - 32)))) && (!(scr_solid((x - 27), (y - 32)))) && (!(scr_solid(x, (y - 32)))) && (!(scr_solid(x, (y - 16)))))
    {
        sprite_index = spr_crouchslipjump
        image_index = 0
        vsp = -11
        with (instance_create(x, y, obj_superdashcloud))
        {
            image_xscale = other.xscale
            other.dashcloudid = id
        }
    }
    if (grounded && key_attack && (!(scr_solid((x + 27), (y - 32)))) && (!(scr_solid((x - 27), (y - 32)))) && (!(scr_solid(x, (y - 32)))) && (!(scr_solid(x, (y - 16)))))
    {
        if (!((character == "N" && pogo == true)))
        {
            scr_soundeffect(sfx_rollgetup)
            machhitAnim = 1
            machhitAnimtimer = 500
            rollmove = 1
            movespeed = 8
            state = 70
            mach2 = 35
            image_index = 0
            sprite_index = spr_rollgetup
        }
        else
        {
            sprite_index = spr_playerN_pogostart
            state = (119 << 0)
            image_index = 0
            pogomovespeed = 9
        }
    }
    if (grounded && vsp > 0 && (sprite_index == spr_crouchslipjump || sprite_index == spr_crouchslipfall))
    {
        jumpstop = 0
        sprite_index = spr_crouchslip
    }
    if (sprite_index == spr_crouchslipjump && floor(image_index) == (image_number - 1))
        sprite_index = spr_crouchslipfall
    if (movespeed <= 0)
    {
        state = 66
        movespeed = 0
        mach2 = 0
        crouchslideAnim = 1
        image_index = 0
        crouchAnim = 1
        start_running = 1
        alarm[4] = 14
    }
    if (scr_solid((x + xscale), y) && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        movespeed = 0
        state = 72
        hsp = -2.5 * xscale
        vsp = -3
        mach2 = 0
        image_index = 0
        machslideAnim = 1
        machhitAnim = 0
        instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
    }
    if (scr_slope() && vsp >= 0)
    {
        if place_meeting(x, (y + 1), obj_slope)
        {
            with (instance_place(x, (y + 1), obj_slope))
            {
                var slope_acceleration = abs(image_yscale) / abs(image_xscale)
                if (other.movespeed > 0 && other.xscale == sign(image_xscale))
                    other.movespeed -= (0.25 * slope_acceleration)
                else if (other.movespeed < 20 && other.xscale == (-sign(image_xscale)))
                    other.movespeed += (0.3 * slope_acceleration)
            }
        }
        if (tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, (y + 1), "Tiles_Solid") == (34 << 0))
        {
            var _slope = scr_tileslope(x, (y + 1))
            if (_slope[0] != -4)
            {
                var _xscale = _slope[1]
                var _yscale = _slope[2]
                slope_acceleration = abs(_yscale) / abs(_xscale)
                if (other.movespeed > 0 && other.xscale == sign(_xscale))
                    other.movespeed -= (0.25 * slope_acceleration)
                else if (other.movespeed < 22 && other.xscale == (-sign(_xscale)))
                    other.movespeed += (0.25 * slope_acceleration)
                if (other.movespeed <= 0)
                    other.xscale = (-sign(_xscale))
            }
        }
    }
    if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
    {
        with (instance_create(x, y, obj_slidecloud))
            image_xscale = other.xscale
    }
    image_speed = 0.4
}

