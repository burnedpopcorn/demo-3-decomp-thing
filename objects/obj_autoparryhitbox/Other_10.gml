with (playerid)
{
    scr_soundeffect(sfx_parry)
    state = 114
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
    image_index = 0
    taunttimer = 20
    parry_id = -4
    image_speed = 0.5
    parried_baddie = 8
    flash = 1
    movespeed = 8
    tauntstoredstate = (0 << 0)
    tauntstoredmovespeed = 0
    tauntstoredsprite = spr_idle
}
alarm[0] = 3
collided = 1
