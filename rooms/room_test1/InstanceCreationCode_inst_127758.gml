condition = function() //anon_gml_RoomCC_room_test1_54_Create_12_gml_RoomCC_room_test1_54_Create
{
    var player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
    return (place_meeting(x, y, player) && player.state == (77 << 0));
}

output = function() //anon_gml_RoomCC_room_test1_54_Create_201_gml_RoomCC_room_test1_54_Create
{
    with (obj_secreteye)
    {
        activated = true
        sprite_index = spr_secreteye_spawning
        image_index = 0
        visible = true
    }
    instance_create(x, y, obj_safeexplosion)
}

