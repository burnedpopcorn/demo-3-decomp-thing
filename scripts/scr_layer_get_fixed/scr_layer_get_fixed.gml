function layer_tilemap_get_id_fixed(argument0) //gml_Script_layer_tilemap_get_id_fixed
{
    if layer_exists(argument0)
    {
        var els = layer_get_all_elements(argument0)
        var n = array_length(els)
        for (var i = 0; i < n; i++)
        {
            var el = els[i]
            if (layer_get_element_type(el) == 5)
                return el;
        }
    }
    return -1;
}

function layer_background_get_id_fixed(argument0) //gml_Script_layer_background_get_id_fixed
{
    if layer_exists(argument0)
    {
        var els = layer_get_all_elements(argument0)
        var n = array_length(els)
        for (var i = 0; i < n; i++)
        {
            var el = els[i]
            if (layer_get_element_type(el) == 1)
                return el;
        }
        return -1;
    }
    return -1;
}

