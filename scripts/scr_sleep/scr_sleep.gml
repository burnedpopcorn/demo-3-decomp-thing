function scr_sleep() //scr_sleep
{
    with (obj_camera)
    {
        if (global.hitstunalarm <= -1)
            event_user(0)
    }
}

