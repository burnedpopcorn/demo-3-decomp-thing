if (global.hudmode == false && global.newhud == false)
{
    if (obj_player1.spotlight == 0)
        pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0)
    if (obj_player1.spotlight == 1)
        pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, 0)
    draw_sprite(sprite, -1, xx, yy)
    shader_reset()
}