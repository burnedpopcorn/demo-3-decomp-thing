function scr_player_newbomb() //gml_Script_scr_player_newbomb
{
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    sprite_index = spr_hurt
    image_speed = 0.4
    movespeed += 0.1
    movespeed = clamp(movespeed, 14, 24)
    hsp = lengthdir_x(movespeed, playerdirection)
    vsp = lengthdir_y(movespeed, playerdirection)
    if (scr_solid((x + sign(hsp)), y) && (!((scr_slope() && (!(scr_solid((x + sign(hsp)), (y - 2))))))) && (!(place_meeting((x + sign(hsp)), y, obj_metalblock))) && (!(place_meeting(x, (y + sign(hsp)), obj_metalblockhard))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        if (hsp != 0)
            xscale = sign(hsp)
        sprite_index = spr_hitwall
        scr_soundeffect(sfx_groundpound)
        scr_soundeffect(sfx_bumpwall)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        hsp = 0
        image_speed = 0.35
        flash = 0
        state = 72
        hsp = -2.5 * sign(hsp)
        vsp = -3
        mach2 = 0
        image_index = 0
        instance_create((x + 10 * sign(hsp)), (y + 10), obj_bumpeffect)
    }
    if (scr_solid(x, (y + vsp)) && (!(place_meeting(x, (y + vsp), obj_destructibles))) && (!(place_meeting(x, (y + vsp), obj_metalblockhard))) && (!(place_meeting(x, (y + vsp), obj_metalblock))) && (!(place_meeting(x, (y + vsp), obj_metalblockhard))))
    {
        a = 0
        sprite_index = spr_superjumpland
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        scr_soundeffect(sfx_bumpwall)
        scr_soundeffect(sfx_groundpound)
        image_index = 0
        state = 93
        machhitAnim = 0
        jetpacking = false
        superspringjump = false
    }
}

