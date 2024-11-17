scr_commonenemy()
scr_scareenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (hitboxcreate == 0 && state == 96 && obj_player.state != 91 && obj_player.state != 70)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        sprite_index = spr_player_mask
        ID = other.id
    }
}
if (state != 102 && state != 94 && state != 200 && angry == 0)
{
    if (!((state == 106 && hp <= 0 && thrown == 1)))
    {
        grav = 0.5
        vsp = -5
        image_index = 0
        state = 96
        angry = 1
        thrown = 0
    }
}
if (state != 106 && state != 109 && state != 200 && state != 94 && state != 96)
    angry = 0
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
