scr_commonenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
scr_scareenemy()
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (state != 97 && bombreset == 0 && grounded)
{
    if (state == 102 || state == 94)
    {
        image_index = 0
        sprite_index = spr_swedishmonkey_eat
        state = 97
    }
}
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
