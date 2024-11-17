scr_commonenemy()
var size = random_range(0.5, 1)
if (hp == 1)
    bandeging = 1
if (bandeging == 1 && sprite_index != spr_bigcheese_fall && sprite_index != spr_bigcheese_land)
{
    if (hp == 1 && bandaged == 0)
    {
        repeat (3)
        {
            with (instance_create((x + (random_range(-5, 5))), (y + (random_range(-5, 5)) + 22), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
                hsp = initialhsp + other.hsp
            }
        }
        bandaged = 1
    }
}
if (hp == 1 && bandaged == 1)
{
    if (time > 0)
        time--
    if (time <= 0)
    {
        time = 150
        var slime = random_range(1, 5)
        repeat slime
        {
            with (instance_create((x + (random_range(-5, 5))), (y + (random_range(-5, 5)) + 22), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
                hsp = initialhsp + other.hsp
            }
        }
    }
}
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, (y - 20), obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
scr_scareenemy()
