i = 0
targets[0] = -4
unid = 0
is_exit_portal = false
exit_id = -4
add_target = function(argument0, argument1, argument2, argument3) //anon_gml_Object_obj_objectteleportal_Create_0_96_gml_Object_obj_objectteleportal_Create_0
{
    if (argument1 == undefined)
        argument1 = 0
    if (argument2 == undefined)
        argument2 = 0
    if (argument3 == undefined)
        argument3 = -4
    targets[i++] = 
    {
        _object: argument0,
        _xoffset: argument1,
        _yoffset: argument2,
        _output_function: argument3
    }

}

