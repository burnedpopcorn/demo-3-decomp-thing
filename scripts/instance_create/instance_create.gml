function instance_create(argument0, argument1, argument2) //gml_Script_instance_create
{
    var myDepth = 0
    return instance_create_depth(argument0, argument1, myDepth, argument2);
}
