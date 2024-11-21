function tile_meeting_line(argument0, argument1, argument2, argument3, argument4) //tile_meeting_line
{
    if (argument4 == undefined)
        argument4 = "Tiles_Solid"
    if (!layer_exists(argument4))
        return false;
    var x1 = argument0
    var y1 = argument1
    var x2 = argument2
    var y2 = argument3
    var _layer = argument4
    var angle = point_direction(x1, y1, x2, y2)
    var distance = point_distance(x1, y1, x2, y2)
    var ang_sin = dsin(angle)
    var ang_cos = dcos(angle)
    var ang_tan = dtan(angle)
    if (ang_sin > 0)
    {
        var hwall_y = (y1 div 32) * 32 - 0.01
        var hwall_shift_y = -32
    }
    else
    {
        hwall_y = (y1 div 32) * 32 + 32
        hwall_shift_y = 32
    }
    var hwall_x = x1 + (y1 - hwall_y) / ang_tan
    var hwall_shift_x = (-hwall_shift_y) / ang_tan
    if (ang_cos < 0)
    {
        var vwall_x = (x1 div 32) * 32 - 0.01
        var vwall_shift_x = -32
    }
    else
    {
        vwall_x = (x1 div 32) * 32 + 32
        vwall_shift_x = 32
    }
    var vwall_y = y1 + (x1 - vwall_x) * ang_tan
    var vwall_shift_y = (-vwall_shift_x) * ang_tan
    var dist_h = 0
    var dist_v = 0
    var wall_h = false
    var wall_v = false
    while (dist_h < distance)
    {
        dist_h = point_distance(x1, y1, hwall_x, hwall_y)
        var tx = clamp((hwall_x >> 5), 0, (room_width - 1))
        var ty = clamp((hwall_y >> 5), 0, (room_height - 1))
        wall_h = tile_meeting(tx, ty, _layer)
        if wall_h
            break
        else
        {
            hwall_x += hwall_shift_x
            hwall_y += hwall_shift_y
        }
    }
    while (dist_v < distance)
    {
        dist_v = point_distance(x1, y1, vwall_x, vwall_y)
        tx = clamp((vwall_x >> 5), 0, (room_width - 1))
        ty = clamp((vwall_y >> 5), 0, (room_height - 1))
        wall_v = tile_meeting(tx, ty, _layer)
        if wall_v
            break
        else
        {
            vwall_x += vwall_shift_x
            vwall_y += vwall_shift_y
        }
    }
    if (wall_h || wall_v)
        return true;
    else
        return false;
}

