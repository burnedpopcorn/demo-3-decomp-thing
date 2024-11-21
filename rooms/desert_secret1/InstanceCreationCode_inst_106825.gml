condition = function() //gml_Script_anon_gml_RoomCC_desert_secret1_1_Create_12_gml_RoomCC_desert_secret1_1_Create
{
    return ((!instance_exists(106804)) && (!instance_exists(106803)));
}

output = function() //gml_Script_anon_gml_RoomCC_desert_secret1_1_Create_116_gml_RoomCC_desert_secret1_1_Create
{
    with (obj_secreteye)//(106821)
    {
        activated = true
        sprite_index = spr_secreteye_spawning
        image_index = 0
        visible = true
    }
}

