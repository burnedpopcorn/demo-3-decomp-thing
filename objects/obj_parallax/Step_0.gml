if (room != hub_room1 && room != hub_room3 && room != hub_room2 && room != cowboytask && obj_pause.pause == 0)
    global.scrolloffset += 1
for (var i = 0; i < array_length(layers); i++)
{
    if (layers[i] != undefined)
    {
        with (layers[i])
        {
            var _speedmodifier = (global.freezeframe ? 4 : 1)
            var x_pos = layer_xoffset + layer_xshift
            var y_pos = layer_yoffset + layer_yshift
            var parallax_value = parallax_layer(layer_id)
            layer_xshift += (layer_xspeed / _speedmodifier)
            layer_yshift += (layer_yspeed / _speedmodifier)
            layer_x(layer_id, (parallax_value[0] + x_pos))
            layer_y(layer_id, (parallax_value[1] + y_pos))
            layer_background_speed(layer_id, (layer_image_speed / _speedmodifier))
        }
    }
}
