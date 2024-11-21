function scr_player_machroll() //scr_player_machroll
{
    switch jetpacking
    {
        case false:
            image_speed = movespeed / 12 * 0.8
            if (!(place_meeting(x, (y + 1), obj_railh)))
                hsp = xscale * movespeed
            else if place_meeting(x, (y + 1), obj_railh)
            {
                if (other.xscale == sign(image_xscale))
                {
                    if (movespeed > 0)
                        movespeed -= 0.1
                }
                else if (movespeed < 24)
                    movespeed += 0.1
                if (movespeed <= 0)
                    state = (66 << 0)
                hsp = xscale * movespeed
            }
            else if place_meeting(x, (y + 1), obj_railh2)
            {
                if (other.xscale == sign(image_xscale))
                {
                    if (movespeed > 0)
                        movespeed -= 0.1
                }
                else if (movespeed < 24)
                    movespeed += 0.1
                if (movespeed <= 0)
                    hsp = xscale * movespeed
                if (movespeed <= 0)
                    state = (66 << 0)
            }
            mach2 = 100
            machslideAnim = 1
            move = key_right + key_left
            if (movespeed <= 0)
            {
                with (state == (0 << 0))
                    sprite_index = spr_crouch
            }
            if (scr_slope() && vsp >= 0)
            {
                if place_meeting(x, (y + 1), obj_slope)
                {
                    with (instance_place(x, (y + 1), obj_slope))
                    {
                        var slope_acceleration = abs(image_yscale) / abs(image_xscale)
                        if (other.xscale == sign(image_xscale))
                        {
                            if (other.movespeed > 4)
                            {
                                other.movespeed -= (0.25 * slope_acceleration)
                                if (other.movespeed <= 4)
                                    other.movespeed = 4
                            }
                            if (other.maxmachspeed > 24)
                                other.maxmachspeed -= (0.25 * slope_acceleration)
                        }
                        else if (other.xscale == (-sign(image_xscale)))
                        {
                            if (other.movespeed < other.maxmachspeed)
                                other.movespeed += (0.25 * slope_acceleration)
                            if (other.maxmachspeed < 28)
                                other.maxmachspeed += (0.125 * slope_acceleration)
                        }
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
                        if (other.xscale == sign(_xscale))
                        {
                            if (other.movespeed > 0)
                            {
                                other.movespeed -= (0.25 * slope_acceleration)
                                if (other.movespeed <= 0)
                                {
                                    other.xscale = (-sign(_xscale))
                                    other.maxmachspeed = 24
                                }
                            }
                            if (other.maxmachspeed > 24)
                                other.maxmachspeed -= (0.25 * slope_acceleration)
                        }
                        else if (other.xscale == (-sign(_xscale)))
                        {
                            if (other.movespeed < other.maxmachspeed)
                                other.movespeed += (0.25 * slope_acceleration)
                            if (other.maxmachspeed < 28)
                                other.maxmachspeed += (0.125 * slope_acceleration)
                        }
                    }
                }
            }
            if (machhitAnim == 1 || rollmove == 1)
            {
                if (character != "P")
                    machhitAnim = 0
                else
                {
                    if (machhitAnimtimer > 0)
                        machhitAnimtimer -= 5
                    if (machhitAnimtimer <= 0)
                    {
                        machhitAnimtimer = 500
                        machhitAnim = 0
                        rollmove = 0
                    }
                }
            }
            if (!grounded)
            {
                machhitAnimtimer = 500
                machhitAnim = 0
            }
            if (machhitAnim == 0)
                rollmove = 0
            if (scr_solid((x + xscale), y) && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
            {
                scr_soundeffect(sfx_bumpwall)
                hsp = 0
                image_speed = 0.35
                flash = 0
                combo = 0
                state = 72
                hsp = -2.5 * xscale
                vsp = -3
                mach2 = 0
                image_index = 0
                instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
            }
            if ((!instance_exists(dashcloudid)) && grounded)
            {
                with (instance_create(x, (y + 43), obj_cloudeffect))
                {
                    image_xscale = other.xscale
                    other.dashcloudid = id
                }
            }
            if grounded
                sprite_index = spr_machroll
            else if (global.divestyle == 0 && sprite_index != spr_dive)
            {
                sprite_index = spr_dive
                vsp = 10
            }
            else if (global.divestyle == 1 && sprite_index != spr_mach2jump)
            {
                sprite_index = spr_mach2jump
                vsp = 13
            }
            if (key_shoot2 && character != "V")
            {
                breakdancebuffer = 50
                scr_soundeffect(sfx_rollgetup)
                scr_soundeffect(sfx_breakdance)
                movespeed = 13
                sprite_index = spr_breakdanceattack1
                state = (121 << 0)
                with (instance_create(x, y, obj_dashcloud2))
                    image_xscale = other.xscale
                image_index = 0
            }
            if ((!key_down) && (!(scr_solid((x + 27), (y - 32)))) && (!(scr_solid((x - 27), (y - 32)))) && (!(scr_solid(x, (y - 32)))) && (!(scr_solid(x, (y - 16)))))
            {
                image_index = 0
                scr_soundeffect(sfx_rollgetup)
                if (movespeed >= 12)
                {
                    state = 91
                    movespeed = clamp(movespeed, 12, 20)
                }
                else if (movespeed >= 8)
                {
                    state = 70
                    movespeed = clamp(movespeed, 8, 12)
                }
                else
                {
                    state = (69 << 0)
                    movespeed = 6
                }
                if (character != "S")
                    sprite_index = spr_rollgetup
            }
            break
        case true:
            if (movespeed < 24 && move == xscale)
            {
                movespeed += 0.1
                if (!instance_exists(crazyruneffectid))
                {
                    with (instance_create(x, y, obj_crazyruneffect))
                    {
                        playerid = other.object_index
                        other.crazyruneffectid = id
                    }
                }
            }
            else if (movespeed > 12 && move != xscale)
                movespeed -= 0.1
            hsp = xscale * movespeed
            mach2 = 100
            move = key_right + key_left
            if (movespeed > 20 && image_speed != 0.8)
            {
                flash = 1
                image_speed = 0.8
            }
            else if (movespeed <= 20)
                image_speed = 0.5
            if (scr_solid((x + 1), y) && xscale == 1 && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
            {
                jetpacking = false
                scr_soundeffect(sfx_bumpwall)
                hsp = 0
                image_speed = 0.35
                flash = 0
                combo = 0
                state = 72
                hsp = -2.5
                vsp = -3
                mach2 = 0
                image_index = 0
                instance_create((x + 10), (y + 10), obj_bumpeffect)
            }
            if (scr_solid((x - 1), y) && xscale == -1 && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
            {
                jetpacking = false
                scr_soundeffect(sfx_bumpwall)
                hsp = 0
                image_speed = 0.35
                flash = 0
                combo = 0
                state = 72
                hsp = 2.5
                vsp = -3
                mach2 = 0
                image_index = 0
                instance_create((x - 10), (y + 10), obj_bumpeffect)
            }
            if (((!key_down) || (!grounded)) && (!(scr_solid((x + 27), (y - 32)))) && (!(scr_solid((x - 27), (y - 32)))) && (!(scr_solid(x, (y - 32)))) && (!(scr_solid(x, (y - 16)))))
            {
                image_index = 0
                scr_soundeffect(sfx_rollgetup)
                state = (117 << 0)
                sprite_index = spr_jetpack
            }
            if ((!instance_exists(dashcloudid)) && grounded)
            {
                with (instance_create(x, (y + 43), obj_cloudeffect))
                {
                    image_xscale = other.xscale
                    other.dashcloudid = id
                }
            }
            break
    }

}

