function tile_meeting_id(argument0, argument1, argument2) //gml_Script_tile_meeting_id
{
    if (argument2 == undefined)
        argument2 = "Tiles_Solid"
    if (!layer_exists(argument2))
        return false;
    var _layer = argument2
    var _tm = layer_tilemap_get_id_fixed(_layer)
    var _x1 = tilemap_get_cell_x_at_pixel(_tm, (bbox_left + argument0 - x), y)
    var _y1 = tilemap_get_cell_y_at_pixel(_tm, x, (bbox_top + argument1 - y))
    var _x2 = tilemap_get_cell_x_at_pixel(_tm, (bbox_right + argument0 - x), y)
    var _y2 = tilemap_get_cell_y_at_pixel(_tm, x, (bbox_bottom + argument1 - y))
    for (var _x = _x1; _x <= _x2; _x++)
    {
        for (var _y = _y1; _y <= _y2; _y++)
        {
            var _tiledata = tilemap_get(_tm, _x, _y)
            if (tile_get_index(_tiledata) > 0)
                return _tiledata;
        }
    }
    return false;
}

