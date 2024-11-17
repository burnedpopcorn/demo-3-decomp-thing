flags.do_once_per_save = true
flags.do_save = true
flags.saveroom = global.saveroom
condition = function() //gml_Script_anon_gml_RoomCC_hub_room3_11_Create_102_gml_RoomCC_hub_room3_11_Create
{
    return place_meeting(x, y, obj_player);
}

output = function() //gml_Script_anon_gml_RoomCC_hub_room3_11_Create_174_gml_RoomCC_hub_room3_11_Create
{
    scr_queue_message("HELLO! MOST OF THE LEVELS HERE ARE W.I.P. SO BEWARE!")
    scr_queue_tvanim(2413, 210)
    with (obj_tv)
    {
        _message = "BEWARE OF W.I.P. LEVELS"
        old_message = "BEWARE OF W.I.P. LEVELS"
        showtext = 1
        alarm[0] = 200
        tvsprite = spr_tvranks
        shownranks = 1
    }
}

