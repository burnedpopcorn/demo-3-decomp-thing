condition = function() //gml_Script_anon_gml_RoomCC_desert_5_5_Create_12_gml_RoomCC_desert_5_5_Create
{
    var player = nearest_player()
    return (distance_to_object(player) <= 2500 && player.state == (7 << 0));
}

output = function() //gml_Script_anon_gml_RoomCC_desert_5_5_Create_150_gml_RoomCC_desert_5_5_Create
{
    with (104665)
    {
        activated = true
        sprite_index = spr_secreteye_spawning
        image_index = 0
        visible = true
    }
}
