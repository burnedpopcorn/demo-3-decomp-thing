function scr_sleep() //gml_Script_scr_sleep
{
    with (obj_camera)
    {
        if (global.hitstunalarm <= -1)
            event_user(0)
    }
}

