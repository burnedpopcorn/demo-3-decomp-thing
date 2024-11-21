function scr_shell_openconsole() //scr_shell_openconsole
{
    global.shellactivate = true
}

function scr_shell_closeconsole() //scr_shell_closeconsole
{
    global.shellactivate = false
}

function scr_fartcommand(argument0) //scr_fartcommand
{
    if (argument0 == undefined)
        argument0 = "BALLS"
    switch argument0
    {
        case "fart":
        case "poop":
        case "crap":
        case "fard":
        case "shart":
        case "shit":
        case "brap":
            return true;
    }

}

function scr_shell_roomstart() //scr_shell_roomstart
{
    layer_set_visible("Tiles_Solid", global.showcollisions)
    startscript = function() //anon_scr_shell_roomstart_gml_GlobalScript_scr_shell_functions_519_scr_shell_roomstart_gml_GlobalScript_scr_shell_functions
    {
        if ((!variable_global_exists("solid_tile_surface")) || (!surface_exists(global.solid_tile_surface)))
            global.solid_tile_surface = surface_create(room_width, room_height)
        if (event_type == 8 && event_number == 0)
        {
            surface_set_target(global.solid_tile_surface)
            draw_clear_alpha(c_black, 0)
        }
    }

    endscript = function() //anon_scr_shell_roomstart_gml_GlobalScript_scr_shell_functions_875_scr_shell_roomstart_gml_GlobalScript_scr_shell_functions
    {
        if (event_type == 8 && event_number == 0)
        {
            surface_reset_target()
            draw_surface_ext(global.solid_tile_surface, 0, 0, 1, 1, 0, c_white, 0.5)
        }
    }

    layer_script_begin(layer_get_id("Tiles_Solid"), startscript)
    layer_script_end(layer_get_id("Tiles_Solid"), endscript)
}

