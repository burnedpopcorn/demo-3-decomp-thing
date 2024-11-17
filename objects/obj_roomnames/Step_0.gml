var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _draw_x = draw_x + _cam_x
var _draw_y = draw_y + _cam_y
if (showtext == true)
{
    if (draw_y < 35)
        draw_y += 5
    else
        draw_y = 35
    newdraw_y = approach(newdraw_y, 500, 5)
}
if (showtext == false)
{
    if (draw_y > -64)
        draw_y -= 1
    else
        draw_y = -64
    newdraw_y = approach(newdraw_y, 600, 1)
}
if (instance_exists(obj_player) && global.newhud == false)
{
    if point_in_rectangle(obj_player.x, obj_player.y, (_draw_x - offsetx), (_draw_y - offsety), (_draw_x + offsetx), (_draw_y + offsety))
        alpha = 0.5
    else
        alpha = 1
}
