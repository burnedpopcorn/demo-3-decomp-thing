if (surface_exists(surf_pallete) && (customupdate == true || state == (123 << 0)))
{
    surface_set_target(surf_pallete)
    draw_clear_alpha(c_white, 0)
    pal_swap_draw_palette(spr_palette, 0, 0, 0)
    pal_swap_draw_palette(spr_palette, paletteselect, 1, 0)
    for (var i = 0; i < colorheight; i++)
        draw_point_color(1, i, color[i])
    surface_reset_target()
    customupdate = false
}
else if (!surface_exists(surf_pallete))
{
    surf_pallete = surface_create(surf_width, surf_height)
    surface_set_target(surf_pallete)
    draw_clear_alpha(c_white, 0)
    pal_swap_draw_palette(spr_palette, 0, 0, 0)
    pal_swap_draw_palette(spr_palette, paletteselect, 1, 0)
    for (i = 0; i < colorheight; i++)
        draw_point_color(1, i, color[i])
    surface_reset_target()
}
var drawx = x
var drawy = y
var player_xscale = xscale * scale
var player_yscale = yscale * scale
if (surface_exists(surf_pallete) && paletteselect >= (sprite_get_width(spr_palette) - 1))
    pal_swap_set(surf_pallete, 1, true)
else if (paletteselect < (sprite_get_width(spr_palette) - 1))
    pal_swap_set(spr_palette, paletteselect, false)
if (global.draw_peter == true && (character == "P" || character == "N"))
{
    if (character == "P")
        draw_sprite_ext(spr_peter, -1, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
    else
        draw_sprite_ext(spr_chungus, -1, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
}
else
    draw_sprite_ext(sprite_index, image_index, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
    draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, player_yscale, draw_angle, image_blend, image_alpha)
shader_reset()
if flash
{
    shader_set(shd_hit)
    if (global.draw_peter == true && (character == "P" || character == "N"))
    {
        if (character == "P")
            draw_sprite_ext(spr_peter, -1, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
        else
            draw_sprite_ext(spr_chungus, -1, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
    }
    else
        draw_sprite_ext(sprite_index, image_index, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
    if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
        draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, player_yscale, draw_angle, image_blend, image_alpha)
    shader_reset()
}
if (pizzashield == true && room != rank_room && room != timesuproom)
    draw_sprite_ext(spr_pizzashield, pizzashieldframes, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
if (global.freezeframe == false)
    pizzashieldframes += 0.35
if (pizzashieldframes > 16)
    pizzashieldframes = 0
if (spellshowbuffer > 0)
    draw_sprite(spr_dougieicons, (spellselect - 1), x, (y - 50))
if show_tricks
{
    draw_set_font(global.combofont)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_text(x, (y - 90), string(tricksperformed))
}
