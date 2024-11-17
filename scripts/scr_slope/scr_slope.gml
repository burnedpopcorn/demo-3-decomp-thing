function scr_slope() //gml_Script_scr_slope
{
    y++
    var slope = instance_place(x, y, obj_slope)
    if slope
    {
        with (slope)
        {
            var object_side = 0
            var slope_start = 0
            var slope_end = 0
            if (image_xscale > 0)
            {
                object_side = other.bbox_right
                slope_start = bbox_bottom
                slope_end = bbox_top
            }
            else
            {
                object_side = other.bbox_left
                slope_start = bbox_top
                slope_end = bbox_bottom
            }
            var m = sign(image_xscale) * (bbox_bottom - bbox_top) / (bbox_right - bbox_left)
            var sslope = slope_start - (round(m * (object_side - bbox_left)))
            if (other.bbox_bottom >= sslope)
            {
                other.y--
                return 1;
            }
        }
    }
    if layer_exists("Tiles_Solid")
    {
        if (tile_meeting_precise(x, y, "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (34 << 0))
        {
            y--
            return true;
        }
    }
    y--
    return 0;
}

