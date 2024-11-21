function scr_player_pogo() //scr_player_pogo
{
    move = key_left + key_right
    if (move != 0 && grounded)
        hsp = move * movespeed
    else
        hsp = xscale * movespeed
    if (grounded && (!((sprite_index == spr_playerN_pogo || sprite_index == spr_playerN_pogocharged))))
    {
        hsp = 0
        vsp = 0
        movespeed = 0
        image_index = 0
        with (instance_create(x, y, obj_landcloud))
        {
            playerid = other.id
            image_xscale = other.xscale
        }
        if (pogobounces > 2)
        {
            with (instance_create(x, y, obj_pogoeffect))
            {
                playerid = other.id
                image_xscale = other.xscale
            }
        }
        scr_soundeffect(sfx_pogo)
        if (pogojetcharge == false)
            sprite_index = spr_playerN_pogo
        else
            sprite_index = spr_playerN_pogocharged
        image_index = 0
        pogoed = false
    }
    if ((sprite_index == spr_playerN_pogo || sprite_index == spr_playerN_pogocharged) && floor(image_index) == 3 && pogoed == false)
    {
        if (move == xscale)
        {
            pogomovespeed = clamp((pogomovespeed + 4), 6, 128)
            pogobounces += 1
            movespeed = pogomovespeed
        }
        else if (move != xscale && movespeed > 0)
        {
            pogomovespeed = 6
            pogobounces = 0
            movespeed = pogomovespeed
        }
        if key_jump2
            vsp = -12
        else if key_down
            vsp = -3
        else
            vsp = -6
        pogoed = true
    }
    if (sprite_index == spr_playerN_pogo && pogojetcharge == true)
        sprite_index = spr_playerN_pogocharged
    if (sprite_index == spr_playerN_pogocharged && pogojetcharge == false)
        sprite_index = spr_playerN_pogo
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_playerN_pogo || sprite_index == spr_playerN_pogofallcharged || sprite_index == spr_playerN_pogostart || sprite_index == spr_playerN_pogocharged))
    {
        if (pogojetcharge == false)
            sprite_index = spr_playerN_pogofall
        else
            sprite_index = spr_playerN_pogofallcharged
    }
    if (move != 0 && (!grounded))
    {
        if (movespeed < 6)
            movespeed += 0.25
    }
    if (move != xscale || move == 0)
    {
        movespeed = 0
        pogobounces = 0
    }
    if (move != xscale)
        pogomovespeed = 6
    if (scr_solid((x + sign(hsp)), y) && (!(scr_slope_ext((x + sign(hsp)), y))) && movespeed > 0 && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        movespeed = 0
        pogobounces = 0
        pogomovespeed = 6
    }
    if (move != 0 && hsp == 0)
        xscale = move
    else if (sign(hsp) != 0)
        xscale = sign(hsp)
    if (!key_attack)
    {
        state = 0
        pogobounces = 0
    }
    if (pogomovespeed > 12)
    {
        if (pogobounces < 2)
            pogobounces = 2
    }
    if (pogobounces >= 2 && pogojetcharge == false)
    {
        pogojetcharge = true
        pogojetchargebuffer = 100
    }
    if (movespeed > 12)
        pogojetchargebuffer = 100
    if (key_taunt2 && sprite_index != spr_playerN_pogo && sprite_index != spr_playerN_pogocharged)
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
    image_speed = 0.35
}

