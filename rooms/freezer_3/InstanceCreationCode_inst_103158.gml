condition = function() //gml_Script_anon_gml_RoomCC_freezer_3_5_Create_12_gml_RoomCC_freezer_3_5_Create
{
    var player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
    return (place_meeting(x, y, player) && player.state == (77 << 0));
}

output = function() //gml_Script_anon_gml_RoomCC_freezer_3_5_Create_201_gml_RoomCC_freezer_3_5_Create
{
    with (obj_secreteye)
    {
        activated = true
        sprite_index = spr_secreteye_spawning
        image_index = 0
        visible = true
    }
}

