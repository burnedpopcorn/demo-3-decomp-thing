var layers;
function approach(argument0, argument1, argument2) //gml_Script_approach
{
    return (argument0 + (clamp((argument1 - argument0), (-argument2), argument2)));
}

function chance(argument0) //gml_Script_chance
{
    return argument0 > random(1);
}

function wave(argument0, argument1, argument2, argument3) //gml_Script_wave
{
    var a4 = (argument1 - argument0) * 0.5
    return (argument0 + a4 + (sin((current_time * 0.001 + argument2 * argument3) / argument2 * (2 * pi))) * a4);
}

function wrap(argument0, argument1, argument2) //gml_Script_wrap
{
    var value = floor(argument0)
    var _min = floor(min(argument1, argument2))
    var _max = floor(max(argument1, argument2))
    var range = _max - _min + 1
    return (((((value - _min) % range) + range) % range) + _min);
}

function animation_end(argument0, argument1) //gml_Script_animation_end
{
    if (argument0 == undefined)
        argument0 = floor(image_index)
    if (argument1 == undefined)
        argument1 = image_number - 1
    return argument0 >= argument1;
}

function nearest_player(argument0, argument1) //gml_Script_nearest_player
{
    if (argument0 == undefined)
        argument0 = x
    if (argument1 == undefined)
        argument1 = y
    return (global.coop == false ? 62 : instance_nearest(argument0, argument1, obj_player));
}

function focused_player() //gml_Script_focused_player
{
    return (global.coop == false ? 62 : (obj_player1.spotlight == false ? 61 : 62));
}

function layer_change_background(argument0, argument1) //gml_Script_layer_change_background
{
    if (argument0 != argument1)
    {
        var a = layer_get_all()
        for (var i = 0; i < array_length(a); i++)
        {
            var back_id = layer_background_get_id_fixed(a[i])
            if (layer_background_get_sprite(back_id) == argument0)
                layer_background_sprite(back_id, argument1)
        }
    }
}

function get_all_layer_type(argument0) //gml_Script_get_all_layer_type
{
    if (argument0 == undefined)
        argument0 = 0
    var layernum = 0
    var a = layer_get_all()
    for (var i = 0; i < array_length(a); i++)
    {
        var els = layer_get_all_elements(a[i])
        if (layer_get_element_type(els) == argument0)
            layers[layernum++] = a[i]
    }
    if (!layernum)
        return -4;
    return layers;
}

function rank_checker(argument0) //gml_Script_rank_checker
{
    if (argument0 == undefined)
        argument0 = global.rank
    var value = 0
    switch argument0
    {
        case "p":
            value = 6
            break
        case "s+":
            value = 5
            break
        case "s":
            value = 4
            break
        case "a":
            value = 3
            break
        case "b":
            value = 2
            break
        case "c":
            value = 1
            break
        case "d":
            value = 0
            break
    }

    return value;
}

