function tile_height_checker(argument0, argument1, argument2) //tile_height_checker
{
    var _tile = argument2
    var column = sprite_get_height(spr_solidtile) / 32
    var row = sprite_get_width(spr_solidtile) / 32
    if (_tile < (column * row - 1))
    {
        var posx = _tile % column
        var posy = floor(_tile / row)
        var arraycheck = (argument0 % 32) + posx * 32
        var mapped = global.tile_heightmap[posy][arraycheck]
        var donkey_kong = (argument1 % 32) >= mapped
        return donkey_kong;
    }
}

function tile_meeting_precise(argument0, argument1, argument2) //tile_meeting_precise
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
            var _tile = tile_get_index(tilemap_get(_tm, _x, _y))
            if (_tile > 0)
            {
                if (_tile == (1 << 0))
                    return _tile;
                else
                {
                    var truth = false
                    truth = (tile_height_checker(argument0, (bbox_bottom + argument1 - y), _tile) || tile_height_checker((bbox_left + argument0 - x), (bbox_bottom + argument1 - y), _tile) || tile_height_checker((bbox_right + argument0 - x), (bbox_bottom + argument1 - y), _tile))
                    if (truth == true)
                        return _tile;
                }
            }
        }
    }
    return false;
}

