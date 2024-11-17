function scr_collide()
{
    var _grav;
    
    if (global.freezeframe == true)
        return false;
    
    grounded = false;
    in_water = instance_exists(obj_water) && obj_water.bbox_top < y;
    
    repeat (abs(vsp))
    {
        if (!scr_solid(x, y + sign(vsp)))
        {
            y += sign(vsp);
        }
        else
        {
            vsp = 0;
            break;
        }
    }
    
    repeat (abs(hsp))
    {
        if (scr_solid(x + sign(hsp), y) && !scr_solid(x + sign(hsp), y - 1))
            y--;
        
        if (!scr_solid(x + sign(hsp), y) && !scr_solid(x + sign(hsp), y + 1) && scr_solid(x + sign(hsp), y + 2))
            y++;
        
        if (!scr_solid(x + sign(hsp), y))
        {
            x += sign(hsp);
        }
        else
        {
            hsp = 0;
            break;
        }
    }
    
    _grav = (in_water == true) ? 6 : 10;
    
    if (vsp < _grav)
        vsp += grav;
    
    grounded |= scr_solid(x, y + 1);
}
