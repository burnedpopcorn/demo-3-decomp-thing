var _temp_local_var_2;
function scr_collide() //gml_Script_scr_collide
{
    if (global.freezeframe == true)
        return false;
    grounded = false
    in_water = (instance_exists(obj_water) && obj_water.bbox_top < y)
    var _temp_local_var_2 = abs(vsp)
	if !(abs(vsp) <= 0)
    {
        while (true)
        {
            if (!(scr_solid(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                var _temp_local_var_2 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                break
            }
            else
                vsp = 0
        }
    }
    var _temp_local_var_2 = abs(hsp)
	if !(abs(hsp) <= 0)
    {
        while (true)
        {
            if (scr_solid((x + sign(hsp)), y) && (!(scr_solid((x + sign(hsp)), (y - 1)))))
                y--
            if ((!(scr_solid((x + sign(hsp)), y))) && (!(scr_solid((x + sign(hsp)), (y + 1)))) && scr_solid((x + sign(hsp)), (y + 2)))
                y++
            if (!(scr_solid((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                var _temp_local_var_2 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                break
            }
            else
                hsp = 0
        }
    }
    var _grav = (in_water == true ? 6 : 10)
    if (vsp < _grav)
        vsp += grav
    grounded |= scr_solid(x, (y + 1))
}

