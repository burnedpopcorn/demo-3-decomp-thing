function scr_default_parallax(argument0) //gml_Script_scr_default_parallax
{
    if (argument0 == undefined)
        argument0 = false
    bg = undefined
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_119_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.25
        array[1] = _camera.centeredcam_y * 0.25
        return array;
    }

    add_parallax_function("Backgrounds_1", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_420_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.15
        array[1] = _camera.centeredcam_y * 0.15
        return array;
    }

    add_parallax_function("Backgrounds_2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_721_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.05
        array[1] = _camera.centeredcam_y * 0.05
        return array;
    }

    add_parallax_function("Backgrounds_3", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_1022_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.005
        array[1] = _camera.centeredcam_y * 0.005
        return array;
    }

    add_parallax_function("Backgrounds_4", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_1325_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_5"))
        var array = -4
        array[0] = _camera.centeredcam_x * 0.0005
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.0005 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_5", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_1824_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var foregroundoffsety = room_height - sprite_get_height(layer_background_get_sprite(back_id))
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_foreground"))
        var array = -4
        array[0] = _camera.centeredcam_x * 1.5
        array[1] = clamp((_camera.centeredcam_y * 0.9 + camera_get_view_height(view_camera[0]) - sprite_get_height(layer_background_get_sprite(back_id))), foregroundoffsety, (foregroundoffsety + 8))
        return array;
    }

    add_parallax_function("Backgrounds_foreground", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_2485_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        var lay_y = 0
        if instance_exists(obj_parallax)
        {
            for (var i = 0; i < array_length(obj_parallax.layers); i++)
            {
                if (obj_parallax.layers[i] != undefined)
                {
                    with (obj_parallax.layers[i])
                    {
                        if (layer_get_name(layer_id) == "Backgrounds_long2")
                            lay_y = layer_yoffset
                    }
                }
            }
        }
        array[0] = _camera.centeredcam_x * 0.25
        array[1] = clamp((_camera.centeredcam_y * 0.15 + lay_y), (lay_y - 192), (lay_y + 32))
        return array;
    }

    add_parallax_function("Backgrounds_long2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_3221_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        var lay_y = 0
        if instance_exists(obj_parallax)
        {
            for (var i = 0; i < array_length(obj_parallax.layers); i++)
            {
                if (obj_parallax.layers[i] != undefined)
                {
                    with (obj_parallax.layers[i])
                    {
                        if (layer_get_name(layer_id) == "Backgrounds_long")
                            lay_y = layer_yoffset
                    }
                }
            }
        }
        array[0] = _camera.centeredcam_x * 0.15
        array[1] = clamp((_camera.centeredcam_y * 0.15 + lay_y), (lay_y - 192), (lay_y + 32))
        return array;
    }

    add_parallax_function("Backgrounds_long", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_3948_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.25
        array[1] = _camera.cam_y * 0.25
        return array;
    }

    add_parallax_function("Backgrounds_Ground1", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_4253_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.15
        array[1] = _camera.cam_y * 0.15
        return array;
    }

    add_parallax_function("Backgrounds_Ground2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_4566_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.25
        array[1] = _camera.centeredcam_y * 0.25
        return array;
    }

    add_parallax_function("Backgrounds_scroll", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_4883_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.15
        array[1] = _camera.centeredcam_y * 0.15
        return array;
    }

    add_parallax_function("Backgrounds_sky", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_5198_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var array = -4
        array[0] = _camera.centeredcam_x * 0.05
        array[1] = _camera.centeredcam_y * 0.05
        return array;
    }

    add_parallax_function("Backgrounds_sky2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_5549_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H1"))
        var array = -4
        array[0] = _camera.centeredcam_x * 0.25
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.25 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_H2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_6084_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H2"))
        var array = -4
        array[0] = _camera.centeredcam_x * 0.15
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.15 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_H1", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_6574_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H3"))
        var array = -4
        array[0] = _camera.centeredcam_x * 0.05
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.05 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_H3", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_7063_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H4"))
        var array = -4
        array[0] = _camera.centeredcam_x * 0.005
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.005 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_H4", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_7554_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_V1"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.25 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.centeredcam_y * 0.25
        return array;
    }

    add_parallax_function("Backgrounds_V1", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_8041_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_V2"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.15 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.centeredcam_y * 0.15
        return array;
    }

    add_parallax_function("Backgrounds_V2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_8529_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.3 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.3 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_far", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_9125_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far1"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.25 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.25 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_far1", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_9725_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far2"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.15 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.15 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_far2", bg, argument0)
    bg = function() //gml_Script_anon_scr_default_parallax_gml_GlobalScript_scr_default_parallax_10325_scr_default_parallax_gml_GlobalScript_scr_default_parallax
    {
        var _camera = camera_get_position_struct(view_camera[0])
        var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far3"))
        var array = -4
        array[0] = _camera.cam_x - (clamp((_camera.cam_x * 0.05 * 960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960)))
        array[1] = _camera.cam_y - (clamp((_camera.cam_y * 0.05 * 540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540)))
        return array;
    }

    add_parallax_function("Backgrounds_far3", bg, argument0)
    bg = undefined
}

