var return_value;
function parallax_layer(argument0) //parallax_layer
{
    if (argument0 == undefined)
        argument0 = -4
    return_value[0] = 0
    return_value[1] = 0
    if (argument0 != -4)
    {
        for (var i = 0; i < array_length(global.parallax_array); i++)
        {
            if (global.parallax_array[i]._layer_name == layer_get_name(argument0))
            {
                var _function = global.parallax_array[i]._function_id
                return _function();
            }
        }
    }
    return return_value;
}

function add_parallax_function(argument0, argument1, argument2) //add_parallax_function
{
    if (argument2 == undefined)
        argument2 = false
    var array_pos = 0
    for (var i = 0; i < array_length(global.parallax_array); i++)
    {
        if (global.parallax_array[i]._layer_name == argument0)
        {
            if (argument2 == true)
                array_pos = i
            else
                return false;
        }
    }
    if (argument2 == false)
        array_pos = global.parallax_arraynumber++
    global.parallax_array[array_pos] = 
    {
        _layer_name: argument0,
        _function_id: argument1
    }

    return true;
}

