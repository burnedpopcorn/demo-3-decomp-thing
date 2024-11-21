function draw_sprite_ext_camera(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //draw_sprite_ext_camera
{
    var _sprite_index = argument0
    var _image_index = argument1
    var _x = argument2
    var _y = argument3
    var _xscale = argument4
    var _yscale = argument5
    var _rotation = argument6
    var _colorblend = argument7
    var _alpha = argument8
    var sprite = oldfacesprite
    if (_sprite_index != oldfacesprite && global.freezeframe == false && obj_player.state != (122 << 0))
    {
        sprite = _sprite_index
        oldfacesprite = _sprite_index
    }
    else if (global.freezeframe != false && obj_player.state == (122 << 0))
        sprite = oldfacesprite
    draw_sprite_ext(sprite, _image_index, _x, _y, _xscale, _yscale, _rotation, _colorblend, _alpha)
}

