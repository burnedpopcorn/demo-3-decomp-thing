function scr_enemy_frozen() //gml_Script_scr_enemy_frozen
{
    if (global.freezeframe == false)
    {
        state = frozenstate
        sprite_index = frozenspriteindex
        image_index = frozenimageindex
        image_speed = frozenimagespeed
        movespeed = frozenmovespeed
        grav = frozengrav
        hsp = frozenhsp
        vsp = frozenvsp
    }
    else
    {
        vsp = 0
        hsp = 0
        image_speed = 0
        movespeed = 0
    }
}

