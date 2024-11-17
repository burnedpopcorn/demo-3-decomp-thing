for (var i = collisionheight - 1; i >= 0; i--)
{
    for (var z = height - 1; z >= 0; z--)
    {
        var check = 0
        while (check <= 32)
        {
            if place_meeting(z, (check + i * 32), obj_precise_tileinitializer)
                break
            else if (check == 32)
                break
            else
                check++
        }
        global.tile_heightmap[i][z] = check
    }
}
show_debug_message("Generated Heightmap Array")
room_goto(global.roomstart[global.newtitlescreen])
