function scr_solid_player(argument0 = x, argument1 = y, argument2 = false)
{
    var old_x, old_y, movingplatform, floatingplatform, platform, _list, _platforms, collided, i, platformside, type, collide, slope, object_side, slope_start, slope_end, m, sslope, water, grindslope, gobject_side, gslope_start, gslope_end, n, grindsslope;
    
    old_x = x;
    old_y = y;
    x = argument0;
    y = argument1;
    movingplatform = -4;
    
    if (place_meeting(x, y, obj_movingplatform))
    {
        movingplatform = instance_place(x, y, obj_movingplatform);
        
        if (y > old_y && !place_meeting(x, old_y, movingplatform))
        {
            x = old_x;
            y = old_y;
            return 1;
        }
    }
    
    floatingplatform = -4;
    
    if (place_meeting(x, y, obj_floatingplatform))
    {
        floatingplatform = instance_place(x, y, obj_floatingplatform);
        
        if (y > old_y && !place_meeting(x, old_y, floatingplatform))
        {
            x = old_x;
            y = old_y;
            return true;
        }
    }
    
    if (place_meeting(x, y, obj_solid))
    {
        x = old_x;
        y = old_y;
        return 1;
    }
    
    if (layer_exists("Tiles_Solid"))
    {
        if (tile_meeting_precise(x, y, "Tiles_Solid") == (1 << 0))
        {
            x = old_x;
            y = old_y;
            return 1;
        }
    }
    
    if (state != (59 << 0))
    {
        platform = -4;
        
        if (place_meeting(x, y, obj_platform))
        {
            platform = instance_place(x, y, obj_platform);
            
            if (y > old_y && sign(platform.image_yscale) >= 1)
            {
                _list = ds_list_create();
                _platforms = instance_place_list(x, y, obj_platform, _list, false);
                collided = false;
                
                if (_platforms > 0)
                {
                    for (i = 0; i < _platforms; i++)
                    {
                        platform = ds_list_find_value(_list, i);
                        
                        if (place_meeting(x, y, platform) && !place_meeting(x, old_y, platform))
                            collided = true;
                    }
                }
                
                ds_list_destroy(_list);
                
                if (collided)
                {
                    x = old_x;
                    y = old_y;
                    return true;
                }
            }
            else if (y <= old_y && sign(platform.image_yscale) <= -1)
            {
                if (!place_meeting(x, old_y, platform))
                {
                    x = old_x;
                    y = old_y;
                    return true;
                }
            }
        }
        
        platformside = -4;
        
        if (place_meeting(x, y, obj_platformside))
        {
            platformside = instance_place(x, y, obj_platformside);
            
            if (platformside.image_xscale > 0)
            {
                if (x <= old_x && !place_meeting(old_x, y, platformside))
                {
                    x = old_x;
                    y = old_y;
                    return true;
                }
            }
            else if (x >= old_x && !place_meeting(old_x, y, platformside))
            {
                x = old_x;
                y = old_y;
                return true;
            }
        }
        
        if (layer_exists("Tiles_Solid"))
        {
            type = tile_meeting_precise(x, y, "Tiles_Solid");
            
            switch (type)
            {
                case (15 << 0):
                    if (y > old_y)
                    {
                        collide = false;
                        
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(x, old_y, "Tiles_Solid") != type)
                            collide = true;
                        
                        if (collide == true)
                        {
                            x = old_x;
                            y = old_y;
                            return true;
                        }
                    }
                    
                    break;
                
                case (16 << 0):
                    if (y <= old_y)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(x, old_y, "Tiles_Solid") != type)
                        {
                            x = old_x;
                            y = old_y;
                            return true;
                        }
                    }
                    
                    break;
                
                case (17 << 0):
                    if (x <= old_x)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(old_x, y, "Tiles_Solid") != type)
                        {
                            x = old_x;
                            y = old_y;
                            return true;
                        }
                    }
                    
                    break;
                
                case (18 << 0):
                    if (x >= old_x)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(old_x, y, "Tiles_Solid") != type)
                        {
                            x = old_x;
                            y = old_y;
                            return true;
                        }
                    }
                    
                    break;
            }
        }
    }
    
    if (argument2 == false)
    {
        if (place_meeting(x, y, obj_slope))
        {
            slope = instance_place(x, y, obj_slope);
            
            with (slope)
            {
                object_side = 0;
                slope_start = 0;
                slope_end = 0;
                
                if (image_xscale > 0)
                {
                    object_side = other.bbox_right;
                    slope_start = bbox_bottom;
                    slope_end = bbox_top;
                }
                else
                {
                    object_side = other.bbox_left;
                    slope_start = bbox_top;
                    slope_end = bbox_bottom;
                }
                
                m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left);
                sslope = slope_start - round(m * (object_side - bbox_left));
                
                if (other.bbox_bottom >= sslope)
                {
                    other.x = old_x;
                    other.y = old_y;
                    return true;
                }
            }
        }
        
        if (layer_exists("Tiles_Solid"))
        {
            if (tile_meeting_precise(x, y, "Tiles_Solid") == (31 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (32 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (29 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (30 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (33 << 0) || tile_meeting_precise(x, y, "Tiles_Solid") == (34 << 0))
            {
                x = old_x;
                y = old_y;
                return true;
            }
        }
    }
    
    water = -4;
    
    if (place_meeting(x, y, obj_water))
    {
        water = instance_place(x, y, obj_water);
        
        if (y > old_y && !place_meeting(x, old_y, water) && (state == (91 << 0) || state == (51 << 0) || (state == (117 << 0) && vsp == 0) || sprite_index == spr_mach3boost))
        {
            x = old_x;
            y = old_y;
            return 1;
        }
    }
    
    if (y > old_y && !place_meeting(x, old_y, obj_grindrail) && place_meeting(x, y, obj_grindrail))
    {
        if (!cutscene && !scr_transformationcheck(other))
        {
            grinding = true;
            x = old_x;
            y = old_y;
            return 1;
        }
    }
    
    if (place_meeting(x, y, obj_grindrailslope))
    {
        grindslope = instance_place(x, y, obj_grindrailslope);
        
        with (grindslope)
        {
            gobject_side = 0;
            gslope_start = 0;
            gslope_end = 0;
            
            if (image_xscale > 0)
            {
                gobject_side = other.bbox_right;
                gslope_start = bbox_bottom;
                gslope_end = bbox_top;
            }
            else
            {
                gobject_side = other.bbox_left;
                gslope_start = bbox_top;
                gslope_end = bbox_bottom;
            }
            
            n = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left);
            grindsslope = gslope_start - round(n * (gobject_side - bbox_left));
            
            if (other.y >= old_y && other.bbox_bottom == grindsslope && other.bbox_top < grindsslope && gobject_side != grindsslope && !other.cutscene && !scr_transformationcheck(other))
            {
                other.x = old_x;
                other.y = old_y;
                other.grinding = true;
                return 1;
            }
        }
    }
    
    x = old_x;
    y = old_y;
    return 0;
}

/*
function scr_solid_player(argument0, argument1, argument2) //scr_solid_player
{
    if (argument0 == undefined)
        argument0 = x
    if (argument1 == undefined)
        argument1 = y
    if (argument2 == undefined)
        argument2 = false
{
    var old_x = x
    var old_y = y
    x = argument0
    y = argument1
    var movingplatform = noone
    if place_meeting(x, y, obj_movingplatform)
    {
        movingplatform = instance_place(x, y, obj_movingplatform)
        if (y > old_y && (!(place_meeting(x, old_y, movingplatform))))
        {
            x = old_x
            y = old_y
            return 1;
        }
    }
    var floatingplatform = noone
    if place_meeting(x, y, obj_floatingplatform)
    {
        floatingplatform = instance_place(x, y, obj_floatingplatform)
        if (y > old_y && (!(place_meeting(x, old_y, floatingplatform))))
        {
            x = old_x
            y = old_y
            return true;
        }
    }
    if place_meeting(x, y, obj_solid)
    {
        x = old_x
        y = old_y
        return 1;
    }
    if layer_exists("Tiles_Solid")
    {
        if (tile_meeting_precise(x, y, "Tiles_Solid") == (1 << 0))
        {
            x = old_x
            y = old_y
            return 1;
        }
    }
    if (state != (59 << 0))
    {
        var platform = noone
        if place_meeting(x, y, obj_platform)
        {
            platform = instance_place(x, y, obj_platform)
            if (y > old_y && sign(platform.image_yscale) >= 1)
            {
                var _list = ds_list_create()
                var _platforms = instance_place_list(x, y, obj_platform, _list, false)
                var collided = false
                if (_platforms > 0)
                {
                    for (var i = 0; i < _platforms; i++)
                    {
                        platform = ds_list_find_value(_list, i)
                        if (place_meeting(x, y, platform) && (!(place_meeting(x, old_y, platform))))
                            collided = true
                    }
                }
                ds_list_destroy(_list)
                if collided
                {
                    x = old_x
                    y = old_y
                    return true;
                }
            }
            else if (y <= old_y && sign(platform.image_yscale) <= -1)
            {
                if (!(place_meeting(x, old_y, platform)))
                {
                    x = old_x
                    y = old_y
                    return true;
                }
            }
        }
        var platformside = noone
        if place_meeting(x, y, obj_platformside)
        {
            platformside = instance_place(x, y, obj_platformside)
            if (platformside.image_xscale > 0)
            {
                if (x <= old_x && (!(place_meeting(old_x, y, platformside))))
                {
                    x = old_x
                    y = old_y
                    return true;
                }
            }
            else if (x >= old_x && (!(place_meeting(old_x, y, platformside))))
            {
                x = old_x
                y = old_y
                return true;
            }
        }
        if layer_exists("Tiles_Solid")
        {
            var type = tile_meeting_precise(x, y, "Tiles_Solid")
            switch type
            {
                case (15 << 0):
                    if (y > old_y)
                    {
                        var collide = false
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(x, old_y, "Tiles_Solid") != type)
                            collide = true
                        if (collide == true)
                        {
                            x = old_x
                            y = old_y
                            return true;
                        }
                    }
                    break
                case (16 << 0):
                    if (y <= old_y)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(x, old_y, "Tiles_Solid") != type)
                        {
                            x = old_x
                            y = old_y
                            return true;
                        }
                    }
                    break
                case (17 << 0):
                    if (x <= old_x)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(old_x, y, "Tiles_Solid") != type)
                        {
                            x = old_x
                            y = old_y
                            return true;
                        }
                    }
                    break
                case (18 << 0):
                    if (x >= old_x)
                    {
                        if (tile_meeting_precise(x, y, "Tiles_Solid") == type && tile_meeting_precise(old_x, y, "Tiles_Solid") != type)
                        {
                            x = old_x
                            y = old_y
                            return true;
                        }
                    }
                    break
            }

        }
    }
    if (argument2 == false)
    {
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
    }
    var water = noone
    if place_meeting(x, y, obj_water)
    {
        water = instance_place(x, y, obj_water)
        if (y > old_y && (!(place_meeting(x, old_y, water))) && (state == (91 << 0) || state == (51 << 0) || (state == (117 << 0) && vsp == 0) || sprite_index == spr_mach3boost))
        {
            x = old_x
            y = old_y
            return 1;
        }
    }
    if (y > old_y && (!(place_meeting(x, old_y, obj_grindrail))) && place_meeting(x, y, obj_grindrail))
    {
        if ((!cutscene) && (!scr_transformationcheck(other)))
        {
            grinding = true
            x = old_x
            y = old_y
            return 1;
        }
    }
    if place_meeting(x, y, obj_grindrailslope)
    {
        var grindslope = instance_place(x, y, obj_grindrailslope)
        with (grindslope)
        {
            var gobject_side = 0
            var gslope_start = 0
            var gslope_end = 0
            if (image_xscale > 0)
            {
                gobject_side = other.bbox_right
                gslope_start = bbox_bottom
                gslope_end = bbox_top
            }
            else
            {
                gobject_side = other.bbox_left
                gslope_start = bbox_top
                gslope_end = bbox_bottom
            }
            var n = sign(image_xscale) * (bbox_bottom - bbox_top) / (bbox_right - bbox_left)
            var grindsslope = gslope_start - (round(n * (gobject_side - bbox_left)))
            if (other.y >= old_y && other.bbox_bottom == grindsslope && other.bbox_top < grindsslope && gobject_side != grindsslope && (!other.cutscene) && (!scr_transformationcheck(other)))
            {
                other.x = old_x
                other.y = old_y
                other.grinding = true
                return 1;
            }
        }
    }
    x = old_x
    y = old_y
    return 0;
}

