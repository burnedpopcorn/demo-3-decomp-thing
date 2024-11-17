function scr_collide_player()
{
    var _grav;
    
    if (global.freezeframe == true)
        return false;
    
    grounded = false;
    grinding = false;
    
    repeat (abs(vsp))
    {
        if (!scr_solid_player(x, y + sign(vsp)))
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
        if (scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y - 1))
            y--;
        
        if (!scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y + 1) && scr_solid_player(x + sign(hsp), y + 2))
            y++;
        
        if (!scr_solid_player(x + sign(hsp), y))
        {
            x += sign(hsp);
        }
        else
        {
            hsp = 0;
            break;
        }
    }
    
    _grav = (in_water == true) ? (grav / 1.5) : grav;
    
    if (vsp < 20)
        vsp += _grav;
    
    grounded |= scr_solid(x, y + 1);
    grounded |= (scr_solid_player(x, y + 1) && (!place_meeting(x, y, obj_water) && place_meeting(x, y + 1, obj_water)));
}
