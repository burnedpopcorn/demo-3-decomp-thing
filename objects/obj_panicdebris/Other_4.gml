if (global.panic == true && (!instance_exists(obj_treasure)))
{
    repeat (10)
    {
        with (instance_create(random(room_width), ((random(room_height + 32)) - 16), obj_debris))
        {
            image_speed = (irandom_range(35, 50)) / 100
            sprite_index = spr_brickdebris
            vsp = 12
            rotatedirection = choose(-1, 0, 1)
            rotatevalue = irandom_range(-10, 10)
        }
    }
}
var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id_fixed(lay_id)
var lay_id2 = layer_get_id("Backgrounds_2")
var back_id2 = layer_background_get_id_fixed(lay_id2)
var lay_id3 = layer_get_id("Backgrounds_3")
var back_id3 = layer_background_get_id_fixed(lay_id3)
var lay_id4 = layer_get_id("Tiles_1")
var tile_id1 = layer_tilemap_get_id_fixed(lay_id4)
var lay_id5 = layer_get_id("Tiles_2")
var tile_id2 = layer_tilemap_get_id_fixed(lay_id5)
var lay_id6 = layer_get_id("Backgrounds_sky")
var back_id4 = layer_background_get_id_fixed(lay_id6)
var lay_id7 = layer_get_id("Backgrounds_sky2")
var back_id5 = layer_background_get_id_fixed(lay_id7)
var lay_id8 = layer_get_id("Backgrounds_far1")
var back_id6 = layer_background_get_id_fixed(lay_id8)
var lay_id9 = layer_get_id("Backgrounds_Ground1")
var back_id7 = layer_background_get_id_fixed(lay_id9)
var lay_id10 = layer_get_id("Backgrounds_Ground2")
var back_id8 = layer_background_get_id_fixed(lay_id10)
var lay_id11 = layer_get_id("Backgrounds_scroll")
var back_id9 = layer_background_get_id_fixed(lay_id11)
var roomname = room_get_name(room)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 61)
    layer_background_sprite(back_id, bg_darkjohnescape)
if (global.panic == 1 && layer_background_get_sprite(back_id6) == 2206)
    layer_background_sprite(back_id6, bg_nightskyescape)
if (global.panic == 1)
    layer_change_background(59, 1855)
if (global.desertnight == true)
{
    layer_change_background(44, 1120)
    layer_change_background(1166, 2388)
    layer_change_background(2439, 2420)
    layer_change_background(1824, 367)
    layer_change_background(46, 1731)
    layer_change_background(28, 29)
}
