flags.do_once_per_save = true
output = function() //anon_gml_RoomCC_sanctum_7_1_0_Create_41_gml_RoomCC_sanctum_7_1_0_Create
{
    repeat (6)
    {
        with (instance_create(324, 274, obj_collectfloor))
        {
            vsp = random_range(-2, -8)
            hsp = choose(2, -2, 4, -3, 6, -4)
            _direction = sign(hsp)
            movespeed = abs(hsp)
        }
    }
}

