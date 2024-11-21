condition = function() //anon_gml_RoomCC_factory_4_1_Create_12_gml_RoomCC_factory_4_1_Create
{
    var player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
    return (place_meeting(x, y, player) && player.state == (18 << 0));
}

output = function() //anon_gml_RoomCC_factory_4_1_Create_204_gml_RoomCC_factory_4_1_Create
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

