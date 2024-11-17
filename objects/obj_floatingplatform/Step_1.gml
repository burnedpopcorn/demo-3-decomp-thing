var _temp_local_var_3;
if (instance_exists(obj_water) && y > obj_water.bbox_top)
{
    if (!(scr_solid(x, (y - 1))))
        vsp = -8
}
else if (instance_exists(obj_water) && y == obj_water.bbox_top)
    vsp = 0
else if (instance_exists(obj_water) && y < obj_water.bbox_top)
{
    if (!(scr_solid(x, (y + 1))))
        vsp = 8
}
var _temp_local_var_3 = abs(vsp)
if (abs(vsp) <= 0)
{
}
else
{
    while (true)
    {
        if (!(scr_solid(x, (y + sign(vsp)))))
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
var platform_y = y
for (var i = 0; i < (array_length(objects) - 1); i++)
{
    with (objects[i])
    {
        var old_y = bbox_bottom
        var scr = (id == obj_player ? gml_Script_scr_solid_player : gml_Script_scr_solid)
        if ((place_meeting((x - other.hsp), y, other.id) || place_meeting(x, (y + other.vsp + 1), other.id)) && old_y <= (platform_y + 8))
        {
            var vcheck = script_execute(scr, x, (y + other.vsp))
            if (vcheck == false || (vcheck == true && place_meeting(x, (y + other.vsp), obj_platform)))
            {
                y += other.vsp
                if (other.vsp > 0)
                    vsp = other.vsp
                grounded = true
                other.touching = true
            }
        }
    }
}
