var _player = (global.coop == true ? instance_nearest(x, y, obj_player) : 62)
if (distance_to_object(_player) < 50)
{
    with (obj_newmainmenuselect)
    {
        _message = "START GAME"
        showtext = 1
        alarm[0] = 2
    }
}
event_inherited()
