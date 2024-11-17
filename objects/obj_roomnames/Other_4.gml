if (ds_list_find_index(global.saveroom, room) == -1)
{
    scr_roomnames()
    if (_message != -4)
    {
        showtext = 1
        alarm[0] = 200
        ds_list_add(global.saveroom, room)
    }
}
