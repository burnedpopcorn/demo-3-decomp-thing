var _return;
function scr_tileslope(argument0, argument1) //gml_Script_scr_tileslope
{
    var old_x = x
    var old_y = y
    _return[0] = -4
    x = argument0
    y = argument1
    if layer_exists("Tiles_Solid")
    {
        if (tile_meeting_precise(x, y, "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (34 << 0))
        {
            var _tiletype = tile_meeting_precise(x, y, "Tiles_Solid")
            var _xscale = 1
            var _yscale = 1
            switch _tiletype
            {
                case (33 << 0):
                    _xscale = -2
                    _yscale = 1
                    break
                case (34 << 0):
                    _xscale = -2
                    _yscale = 1
                    break
                case (30 << 0):
                    _xscale = -1
                    _yscale = 1
                    break
                case (31 << 0):
                    _xscale = 2
                    _yscale = 1
                    break
                case (32 << 0):
                    _xscale = 2
                    _yscale = 1
                    break
                case (29 << 0):
                    _xscale = 1
                    _yscale = 1
                    break
            }

            _return[0] = _tiletype
            _return[1] = _xscale
            _return[2] = _yscale
            x = old_x
            y = old_y
            return _return;
        }
    }
    x = old_x
    y = old_y
    return _return;
}

