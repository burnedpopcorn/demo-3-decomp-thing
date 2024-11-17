if (instance_number(obj_parallax) > 1)
{
    var first = instance_find(obj_parallax, 0)
    if (id != first)
    {
        instance_destroy()
        return;
    }
}
var i = 5
repeat (5)
    layers[i--] = -4
layernum = 0
_cam_x = camera_get_view_x(view_camera[0])
_cam_y = camera_get_view_y(view_camera[0])
_centeredcam_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2
_centeredcam_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2
default_function = function(argument0) //gml_Script_anon_gml_Object_obj_parallax_Create_0_629_gml_Object_obj_parallax_Create_0
{
    if (argument0 == undefined)
        argument0 = -4
    return (_cam_y * 0.25 * layer_get_depth(argument0) / 500);
}

bg = spr_player_chainsawstart
scrolloffset = global.scrolloffset
randomscrolloffset1 = 0
randomscrolloffset2 = 0
randomscrolloffset3 = 0
layer_x("Backgrounds_sky", 0)
layer_y("Backgrounds_sky", 0)
layer_x("Backgrounds_sky2", 0)
layer_y("Backgrounds_sky2", 0)
layer_x("Backgrounds_scroll", 0)
layer_y("Backgrounds_scroll", 0)
groundy = 0
ground2y = 0
longy = 0
longy2 = 0
x_shift_1 = 0
y_shift_1 = 0
x_shift_2 = 0
y_shift_2 = 0
x_shift_3 = 0
y_shift_3 = 0
back1 = 15
back2 = 15
back3 = 15
back4 = 15
back5 = 15
back6 = 15
back7 = 15
back8 = 15
back9 = 15
back10 = 15
back11 = 15
back12 = 15
back14 = 15
back15 = 15
back16 = 15
