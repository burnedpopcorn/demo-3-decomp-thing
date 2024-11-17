_cam_x = camera_get_view_x(view_camera[0])
_cam_y = camera_get_view_y(view_camera[0])
_centeredcam_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2
_centeredcam_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2
var lay_id = layer_get_id("Backgrounds_foreground")
layer_depth(lay_id, -15)
layernum = 0
var a = layer_get_all()
for (var i = 0; i < array_length(a); i++)
{
    var back_id = layer_background_get_id_fixed(layer_get_name(a[i]))
    if (back_id != -1 && (!layer_get_depth(a[i])) <= 0 && layer_get_visible(a[i]))
    {
        layers[layernum++] = 
        {
            layer_id: a[i],
            layer_image_speed: layer_background_get_speed(back_id),
            layer_xoffset: layer_get_x(a[i]),
            layer_yoffset: layer_get_y(a[i]),
            layer_xspeed: layer_get_hspeed(a[i]),
            layer_yspeed: layer_get_vspeed(a[i]),
            layer_xshift: (global.scrolloffset * layer_get_hspeed(a[i])),
            layer_yshift: (global.scrolloffset * layer_get_vspeed(a[i]))
        }

    }
    else
        layers[layernum++] = undefined
}
