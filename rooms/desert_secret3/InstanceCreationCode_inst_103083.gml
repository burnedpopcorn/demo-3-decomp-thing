condition = function() //gml_Script_anon_gml_RoomCC_desert_secret3_1_Create_12_gml_RoomCC_desert_secret3_1_Create
{
    return (!instance_exists(103064));
}

output = function() //gml_Script_anon_gml_RoomCC_desert_secret3_1_Create_80_gml_RoomCC_desert_secret3_1_Create
{
    with (obj_secreteye)//(103081)
    {
        activated = true
        sprite_index = spr_secreteye_spawning
        image_index = 0
        visible = true
    }
}

