scr_commonenemy()
scr_scareenemy()
if (state == (106 << 0) && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (106 << 0))
    birdcreated = 0
if (state == (102 << 0) && y > ystart && (!(scr_solid(x, (y - 1)))))
    y--
if (state == (102 << 0) && y < ystart && (!(scr_solid(x, (y + 1)))))
    y++
if (state == (106 << 0))
    grav = 0.5
else
    grav = 0
if (bombreset > 0 && state == (102 << 0))
    bombreset--
var player = instance_nearest(x, y, obj_player)
if (player.x > (x - 200) && player.x < (x + 200) && player.y <= (y + 400) && player.y >= (y - 60))
{
    if (x != player.x && state != (97 << 0) && bombreset <= 0)
    {
        if (state == (102 << 0) || state == (94 << 0))
        {
            sprite_index = spr_ufolive_scared
            image_index = 0
            state = (97 << 0)
        }
    }
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state == (97 << 0) || state == 98)
{
    hsp = 0
    vsp = 0
}
if (state != (109 << 0))
    depth = 0
scr_scareenemy()
if (state == (102 << 0))
{
    if (turntimer > 0)
        turntimer--
}
if (turntimer <= 0)
{
    image_xscale *= -1
    turntimer = 600
}
if (state != (106 << 0))
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
