if (_message != -4)
{
    draw_set_font(global.smallfont)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_set_alpha(alpha)
    var _draw_y = draw_y
    if (global.newhud == true)
        _draw_y = newdraw_y
    draw_sprite(spr_roomnamebackground, 0, draw_x, _draw_y)
    draw_set_alpha(1)
    if (string_width(string_upper(_message)) <= maxwidth)
        draw_text(draw_x, _draw_y, string_upper(_message))
    else
        draw_text_ext(draw_x, (_draw_y - 6), string_upper(_message), -1, maxwidth)
}
