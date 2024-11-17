function scr_player_bombpep() //gml_Script_scr_player_bombpep
{
    alarm[8] = 60
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    if key_jump
        input_buffer_jump = 0
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 2
        jumpstop = 1
    }
    if (grounded && vsp > 0)
        jumpstop = 0
    mach2 = 0
    landAnim = 0
    if (sprite_index == spr_bombpepintro && floor(image_index) == (image_number - 1))
    {
        obj_tv.alarm[1] = 75
        sprite_index = spr_bombpeprun
    }
    if (sprite_index == spr_bombpeprun || sprite_index == spr_bombpeprunabouttoexplode)
    {
        if (movespeed <= 8)
            movespeed += 0.2
        move = key_left + key_right
        if grounded
        {
            if (move != 0 && (!instance_exists(obj_bumpeffect)))
                xscale = move
        }
        hsp = floor(xscale * movespeed)
    }
    else
    {
        hsp = 0
        movespeed = 0
    }
    if (bombpeptimer < 20 && bombpeptimer != 0 && sprite_index != spr_bombpepthrow)
        sprite_index = spr_bombpeprunabouttoexplode
    if (sprite_index == spr_bombpepend)
    {
        global.pausecombotime = true
        obj_tv.alarm[1] = 75
        if (floor(image_index) == (image_number - 1))
        {
            alarm[5] = 2
            alarm[7] = 60
            hurted = 1
            state = 0
            sprite_index = spr_idle
            image_index = 0
        }
    }
    if (bombpeptimer <= 0 && sprite_index == spr_bombpeprunabouttoexplode)
    {
        if (instance_exists(obj_water) && in_water == true)
        {
            image_index = 0
            hurted = 1
            global.pausecombotime = true
            obj_tv.alarm[1] = 75
            sprite_index = spr_hurt
            playerdirection = 90
            movespeed = 14
            scr_soundeffect(sfx_bombpep2)
            state = (126 << 0)
            instance_create(x, y, obj_bombexplosion)
        }
        else
        {
            global.pausecombotime = true
            obj_tv.alarm[1] = 75
            scr_soundeffect(sfx_bombpep2)
            hurted = 1
            instance_create(x, y, obj_bombexplosion)
            sprite_index = spr_bombpepend
        }
    }
    if (bombpeptimer > 0)
        bombpeptimer -= 0.5
    if (key_slap2 && bombpeptimer != 0 && (sprite_index == spr_bombpeprunabouttoexplode || sprite_index == spr_bombpeprun))
    {
        sprite_index = spr_bombpepthrow
        image_index = 0
        with (instance_create(x, y, obj_pizzagoblinbomb))
        {
            countdown = clamp(floor(other.bombpeptimer / 2), 0, 60)
            thrownbyplayer = true
            movespeed = 10
            image_xscale = other.xscale
            vsp = -8
        }
        bombpeptimer = 100
    }
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_bombpepthrow)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
        state = 0
        sprite_index = spr_idle
        image_index = 0
    }
    if (scr_solid((x + 1), y) && xscale == 1 && hsp != 0 && (!(scr_slope_ext((x + sign(hsp)), y))))
    {
        instance_create((x + 10), (y + 10), obj_bumpeffect)
        xscale *= -1
    }
    if (scr_solid((x - 1), y) && xscale == -1 && hsp != 0 && (!(scr_slope_ext((x + sign(hsp)), y))))
    {
        instance_create((x - 10), (y + 10), obj_bumpeffect)
        xscale *= -1
    }
    if (input_buffer_jump < 8 && grounded && hsp != 0)
        vsp = -9
    if (movespeed < 4)
        image_speed = 0.35
    else if (movespeed > 4 && movespeed < 8)
        image_speed = 0.45
    else
        image_speed = 0.6
    if (hsp != 0 && (floor(image_index) == 0 || floor(image_index) == 2) && steppy == 0 && grounded)
        steppy = 1
    if (floor(image_index) != 0 && floor(image_index) != 2)
        steppy = 0
    if ((!instance_exists(obj_dashcloud)) && grounded && hsp != 0)
    {
        with (instance_create(x, y, obj_dashcloud))
            image_xscale = other.xscale
    }
}

