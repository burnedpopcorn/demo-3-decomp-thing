function scr_player_mach2() //scr_player_mach2
{
    if (character != "S")
    {
        if (windingAnim < 2000)
            windingAnim++
    }
    hsp = xscale * movespeed
    if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
        hsp = xscale * movespeed
    else if place_meeting(x, (y + 1), obj_railh)
        hsp = xscale * movespeed - 5
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = xscale * movespeed + 5
    move2 = key_right2 + key_left2
    move = key_right + key_left
    crouchslideAnim = 1
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 10
        jumpstop = 1
    }
    if (grounded && vsp > 0)
        jumpstop = 0
    if (input_buffer_jump < 8 && grounded && (!((move == 1 && xscale == -1))) && (!((move == -1 && xscale == 1))))
    {
        image_index = 0
        sprite_index = spr_secondjump1
        scr_soundeffect(sfx_jump)
        if (character == "P")
            vsp = -11
        else
            vsp = -13
    }
    if (grounded && vsp > 0)
    {
        if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_mach4 && sprite_index != spr_player_machhit)
        {
            if (sprite_index != spr_player_machhit && sprite_index != spr_rollgetup)
            {
                if (machhitAnim == 0 || character != "P")
                    sprite_index = spr_mach
            }
        }
        if (machpunchAnim == 1)
        {
            machhitAnimtimer = 500
            machhitAnim = 0
            if (punch == 0)
                sprite_index = spr_machpunch1
            if (punch == 1)
                sprite_index = spr_machpunch2
            if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
            {
                punch = 1
                machpunchAnim = 0
            }
            if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
            {
                punch = 0
                machpunchAnim = 0
            }
        }
        if (machhitAnim == 1)
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
                }
            }
        }
    }
    if (!grounded)
    {
        machhitAnimtimer = 500
        machpunchAnim = 0
        machhitAnim = 0
    }
    if (machhitAnim == 0)
        rollmove = 0
    if grounded
    {
        if (movespeed < 12)
        {
            if (character == "N" && pogo == false)
                movespeed += 0.2
            else
                movespeed += 0.1
        }
        if (movespeed >= 12 && character != "D")
        {
            movespeed = 12
            state = 91
            flash = 1
            if (sprite_index != spr_rollgetup && sprite_index != spr_player_machhit)
                sprite_index = spr_mach4
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale
        }
    }
    if key_jump
        input_buffer_jump = 0
    if (key_down && (!(place_meeting(x, y, obj_dashpad))))
    {
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
        flash = 0
        state = (37 << 0)
        vsp = 10
    }
    if (((!grounded) && scr_solid((x + hsp), y, true) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(scr_slope_ext((x + sign(hsp)), y)))) || (grounded && scr_solid((x + sign(hsp)), (y - 2), true) && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + hsp), y, obj_destructibles))) && scr_slope()))
    {
        wallspeed = movespeed
        state = 17
    }
    else if (grounded && scr_solid((x + sign(hsp)), y) && (!scr_slope()) && scr_solid((x + sign(hsp)), (y - 2)) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        movespeed = 0
        state = 0
    }
    if ((!instance_exists(dashcloudid)) && grounded)
    {
        with (instance_create(x, y, obj_dashcloud))
        {
            image_xscale = other.xscale
            other.dashcloudid = id
        }
    }
    if (grounded && floor(image_index) == (image_number - 1) && sprite_index == spr_rollgetup)
    {
        if (rollmove == 1 && character == "P")
        {
            rollmove = 0
            machhitAnim = 1
            sprite_index = spr_player_machhit
        }
        else
            sprite_index = spr_mach
    }
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_spinjump1)
        sprite_index = spr_playerV_spinjump2
    if ((!grounded) && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump && sprite_index != spr_mach2jump && sprite_index != spr_walljumpstart && sprite_index != spr_walljumpend)
        sprite_index = spr_secondjump1
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
        sprite_index = spr_secondjump2
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_walljumpstart && character != "S")
        sprite_index = spr_walljumpend
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machhit && machhitAnim == 0)
        sprite_index = spr_mach
    if (key_attack && (!(scr_solid((x + xscale), y))) && character == "S" && grounded)
    {
        state = 22
        movespeed = 0
    }
    if key_taunt2
    {
        scr_soundeffect(sfx_taunt)
        taunttimer = 20
        tauntstoredmovespeed = movespeed
        tauntstoredsprite = sprite_index
        tauntstoredstate = state
        tauntstoredimage = image_index
        state = 51
        if (supertauntcharged == true && (character == "P" || character == "N"))
        {
            image_index = 0
            sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4)
        }
        else
        {
            image_index = irandom_range(0, sprite_get_number(spr_taunt))
            sprite_index = spr_taunt
        }
        with (instance_create(x, y, obj_taunteffect))
        {
            playerid = other.id
            baddie = 0
        }
        scr_baddietauntfakeout()
    }
    if ((((!key_attack) && move != xscale && grounded) || (character == "S" && move == 0 && grounded)) && (!grinding))
    {
        image_index = 0
        state = 71
        scr_soundeffect(sfx_break)
        sprite_index = spr_machslidestart
    }
    if (move == (-xscale) && grounded && character != "S")
    {
        scr_soundeffect(sfx_machslideboost)
        image_index = 0
        state = 71
        sprite_index = spr_machslideboost
        machhitAnimtimer = 500
        machhitAnim = 0
    }
    if (move == xscale && (!key_attack) && grounded && (character == "P" || character == "N" || character == "V"))
        state = 0
    if (sprite_index == spr_rollgetup)
        image_speed = 0.4
    else
        image_speed = 0.65
    if (key_slap2 && character == "V")
    {
        vsp = -5
        state = 39
        image_index = 0
        sprite_index = spr_playerV_airrevolver
        image_index = 0
        instance_create((x + image_xscale * 20), (y + 20), obj_shotgunbullet)
        scr_soundeffect(sfx_killingblow)
    }
    if (key_shoot2 && character == "V" && (!instance_exists(obj_vigidynamite)))
    {
        vsp = -5
        state = 110
        image_index = 0
        sprite_index = spr_playerV_dynamitethrow
        with (instance_create(x, y, obj_vigidynamite))
        {
            image_xscale = other.xscale
            movespeed = other.movespeed + 4
            vsp = -6
        }
    }
    if (key_slap2 && character == "S" && suplexmove == 0)
    {
        suplexmove = 1
        vsp = -5
        scr_soundeffect(sfx_spin)
        scr_soundeffect(sfx_suplexdash)
        sprite_index = spr_snick_jump
        state = 12
        image_index = 0
    }
}

