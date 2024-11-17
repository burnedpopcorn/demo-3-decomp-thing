switch color
{
    case c_black:
        draw_set_color(make_colour_rgb(255, 255, 255))
        break
    case 0x000001:
        draw_set_color(make_colour_rgb(248, 0, 0))
        break
    case 0x000002:
        draw_set_color(make_colour_rgb(0, 248, 0))
        break
    case 0x000003:
        draw_set_color(make_colour_rgb(0, 0, 248))
        break
    case 0x000004:
        draw_set_color(make_colour_rgb(0, 0, 0))
        break
    case 0x000005:
        draw_set_color(make_colour_rgb(244, 144, 0))
        break
}

draw_set_font(global.smallnumber)
draw_set_halign(fa_center)
shader_reset()
if flash
{
    shader_set(shd_hit)
    draw_text(x, y, number)
    shader_reset()
}
else
    draw_text(x, y, number)
