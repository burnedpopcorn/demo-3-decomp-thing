function scr_enemy_turn() //gml_Script_scr_enemy_turn
{
    sprite_index = turnspr
    image_speed = 0.35
    if (floor(image_index) == (image_number - 1))
    {
        state = 94
        image_index = 0
        sprite_index = idlespr
        image_xscale *= -1
    }
}
