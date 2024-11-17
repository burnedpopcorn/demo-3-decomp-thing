if (global.hudmode == false && global.newhud == false)
{
    drawx = obj_tv.drawx
    drawy = obj_tv.drawy + 70
    drawx2 = drawx - 82
    drawy2 = drawy - 25
    var meter = global.style / 25
    var yoffset = clamp(round(sprite_get_height(spr_stylepizza) * meter), 0, sprite_get_height(spr_stylepizzadown))
    draw_sprite_ext(spr_stylebar, _image_index, drawx, drawy, 1, 1, 0, c_white, alpha)
    draw_sprite_part_ext(spr_stylepizza, global.stylethreshold, 0, 0, sprite_get_width(spr_stylepizzadown), round(sprite_get_height(spr_stylepizza) * meter), drawx2, drawy2, 1, 1, c_white, alpha)
    if (yoffset <= 14)
        draw_sprite_ext(spr_stylepizzadown, global.stylethreshold, drawx, drawy, 1, 1, 0, c_white, alpha)
    else
        draw_sprite_part_ext(spr_stylepizzadown, global.stylethreshold, 0, round(sprite_get_height(spr_stylepizza) * meter), sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown), drawx2, (drawy2 + yoffset), 1, 1, c_white, alpha)
}
