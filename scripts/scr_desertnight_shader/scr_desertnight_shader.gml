function scr_desert_foregroundshader_init() //scr_desert_foregroundshader_init
{
    var layernum = 0
    layers[0] = noone
    if (!(variable_instance_exists(id, "desert_surface")))
        desert_surface = -4
    var a = layer_get_all()
    for (var i = 0; i < array_length(a); i++)
    {
        var els = layer_get_all_elements(a[i])
        if (layer_get_element_type(els[0]) != 1)
        {
            layers[layernum++] = 
            {
                u_id: a[i],
                x_pos: layer_get_x(a[i]),
                y_pos: layer_get_y(a[i]),
                h_speed: layer_get_hspeed(a[i]),
                v_speed: layer_get_vspeed(a[i])
            }

        }
    }
    var _f = function(argument0, argument1) //anon_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader_608_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader
    {
        return (-((layer_get_depth(argument0.u_id) - layer_get_depth(argument1.u_id))));
    }

    array_sort(layers, _f)
    scr_desert_foregroundshader_start = function() //anon_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader_817_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader
    {
        if (!surface_exists(desert_surface))
            desert_surface = surface_create(room_width, room_height)
        else if (surface_get_width(desert_surface) != room_width || surface_get_height(desert_surface) != room_height)
            surface_resize(desert_surface, room_width, room_height)
        if (event_type == 8 && event_number == 0)
        {
            surface_set_target(desert_surface)
            draw_clear_alpha(c_white, 0)
        }
    }

    scr_desert_foregroundshader_end = function() //anon_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader_1275_scr_desert_foregroundshader_init_gml_GlobalScript_scr_desertnight_shader
    {
        if (event_type == 8 && event_number == 0)
        {
            surface_reset_target()
            draw_surface_ext(desert_surface, 0, 0, 1, 1, 0, c_white, 1)
            draw_surface_ext(desert_surface, 0, 0, 1, 1, 0, c_blue, 0.17)
            with (obj_secretwall)
            {
                visible = false
                if (!surface_exists(secretsurface))
                {
                    secretsurface = surface_create(room_width, room_height)
                    surface_set_target(secretsurface)
                    draw_clear_alpha(c_white, 0)
                    gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha)
                    for (var i = 0; i < array_length(layername); i++)
                    {
                        var tilemap = layer_tilemap_get_id_fixed(layername[i])
                        draw_tilemap(tilemap, 0, 0)
                    }
                    gpu_set_blendmode(bm_normal)
                    surface_reset_target()
                }
                else
                {
                    draw_surface_ext(secretsurface, 0, 0, 1, 1, 0, c_white, secretalpha)
                    draw_surface_ext(secretsurface, 0, 0, 1, 1, 0, c_blue, (0.17 * secretalpha))
                }
            }
        }
    }

    var bottom_id = layers[0].u_id
    var top_id = layers[(layernum - 1)].u_id
    layer_script_begin(bottom_id, scr_desert_foregroundshader_start)
    layer_script_end(top_id, scr_desert_foregroundshader_end)
}

