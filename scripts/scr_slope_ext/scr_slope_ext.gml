function scr_slope_ext(argument0, argument1) //scr_slope_ext
{
    var old_x = x
    var old_y = y
    x = argument0
    y = argument1
    if place_meeting(x, y, obj_slope)
    {
        var slope = instance_place(x, y, obj_slope)
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
                other.x = old_x
                other.y = old_y
                return true;
            }
        }
    }
    if layer_exists("Tiles_Solid")
    {
        if (tile_meeting_precise(x, y, "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (34 << 0))
        {
            x = old_x
            y = old_y
            return true;
        }
    }
    x = old_x
    y = old_y
    return false;
}

