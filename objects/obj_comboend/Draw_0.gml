draw_set_font(global.smallnumber)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_sprite_ext(spr_combo_text, endspr, player.x, (player.y - 95), scale, scale, 0, c_white, image_alpha)
draw_text(player.x, (player.y - 60), string(storedscore))
