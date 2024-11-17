function scr_player_trick() //gml_Script_scr_player_trick
{
    hsp = xscale * movespeed
    if (key_taunt2 && (!((sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4))))
    {
        tricksperformed += 1
        global.style += 3
        with (instance_create(x, (y + 5), obj_smallnumber))
        {
            number = "+3"
            color = 0x000005
        }
        scr_soundeffect(sfx_taunt)
        image_index = 0
        sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4)
        with (instance_create(x, y, obj_taunteffect))
        {
            playerid = other.id
            baddie = 0
        }
        instance_create(x, y, obj_tauntaftereffectspawner)
    }
    if (((!grounded) && scr_solid((x + hsp), y) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(scr_slope_ext((x + sign(hsp)), y)))) || (grounded && scr_solid((x + sign(hsp)), (y - 2)) && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + hsp), y, obj_destructibles))) && scr_slope()))
    {
        wallspeed = clamp(movespeed, 0, 24)
        state = 17
    }
    if (grounded && vsp > 0 && movespeed >= 12)
    {
        state = 91
        sprite_index = spr_mach4
        movespeed = clamp(wallspeed, 12, 24)
    }
    else if (grounded && vsp > 0)
    {
        state = 70
        movespeed = clamp(wallspeed, 8, 12)
    }
    if (floor(image_index) >= (image_number - 1) && (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4))
        sprite_index = spr_mach2jump
    if (floor(image_index) >= (image_number - 1) && sprite_index == spr_playerV_spinjump1)
        sprite_index = spr_mach2jump
    if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
        image_speed = 0.35
    else
        image_speed = 0.5
}

