function scr_player_changing() //scr_player_changing
{
    cutscene = true
    hsp = 0
    vsp = 0
    movespeed = 0
    pogomovespeed = 0
    sprite_index = spr_idle
    image_speed = 0.35
    visible = false
    customupdate = true
    x = approach(x, obj_dresser.x, 2)
    y = approach(y, obj_dresser.y, 16)
}

