function scr_player_portal() //gml_Script_scr_player_portal
{
    cutscene = true
    if (floor(image_index) == (image_number - 5) && sprite_index == spr_pizzaportalentrancestart)
    {
        if (!instance_exists(obj_pizzaportalfade))
        {
            with (instance_create(x, y, obj_pizzaportalfade))
                image_index = 0
        }
    }
    if (floor(image_index) >= (image_number - 1) && sprite_index == spr_pizzaportalentrancestart)
    {
        with (obj_pizzaportalfade)
        {
            sprite_index = spr_pizzaportaldump
            image_index = 0
        }
        visible = true
        vsp = 14
        state = 74
        if (shotgunAnim == 0)
            sprite_index = spr_bodyslamfall
        else
            sprite_index = spr_shotgunjump3
    }
    else
    {
        visible = false
        hsp = 0
        vsp = 0
    }
    global.pausecombotime = true
    obj_tv.alarm[1] = 75
    mach2 = 0
}

