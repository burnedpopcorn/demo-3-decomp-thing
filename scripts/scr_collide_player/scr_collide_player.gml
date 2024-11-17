var _temp_local_var_3;
function scr_collide_player() //gml_Script_scr_collide_player
{
    if (global.freezeframe == true)
        return false;
    grounded = false
    grinding = false
    var _temp_local_var_3 = abs(vsp)
    if (abs(vsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (!(scr_solid_player(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                var _temp_local_var_3 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                break
            }
            else
                vsp = 0
        }
    }
    var _temp_local_var_3 = abs(hsp)
    if (abs(hsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (scr_solid_player((x + sign(hsp)), y) && (!(scr_solid_player((x + sign(hsp)), (y - 1)))))
                y--
            if ((!(scr_solid_player((x + sign(hsp)), y))) && (!(scr_solid_player((x + sign(hsp)), (y + 1)))) && scr_solid_player((x + sign(hsp)), (y + 2)))
                y++
            if (!(scr_solid_player((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                var _temp_local_var_3 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                break
            }
            else
                hsp = 0
        }
    }
    var _grav = (in_water == true ? (grav / 1.5) : grav)
    if (vsp < 20)
        vsp += _grav
    grounded |= scr_solid(x, (y + 1))
    grounded |= (scr_solid_player(x, (y + 1)) && (!(place_meeting(x, y, obj_water))) && place_meeting(x, (y + 1), obj_water))
}

