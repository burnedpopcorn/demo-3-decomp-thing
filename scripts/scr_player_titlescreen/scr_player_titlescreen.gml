function scr_player_titlescreen() //gml_Script_scr_player_titlescreen
{
    if (object_index == obj_player1)
        targetDoor = "A"
    if (object_index == obj_player2)
        targetDoor = "A"
    sprite_index = spr_file2
    image_speed = 0.35
}

