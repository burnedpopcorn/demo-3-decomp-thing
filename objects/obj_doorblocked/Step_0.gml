var roomname = room_get_name(room)
if (string_letters(roomname) == "strongcold")
{
    if (global.panic == 1)
        instance_destroy()
}
if (sprite_index == spr_doorblockedclosing && floor(image_index) == (image_number - 1))
{
    image_index = 0
    image_speed = 0
    sprite_index = spr_doorblocked
}
