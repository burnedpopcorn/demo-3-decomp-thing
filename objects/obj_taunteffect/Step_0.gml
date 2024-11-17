if (baddie == 0)
{
    if (playerid.state != 51 && playerid.state != (125 << 0) && playerid.state != (122 << 0))
        instance_destroy()
}
else if (baddie == 1 && instance_exists(baddieid))
{
    if (baddieid.sprite_index != spr_coolpinea_taunt)
        instance_destroy()
}
else
    instance_destroy()
if (global.freezeframe == true)
    image_speed = 0
else
    image_speed = 0.5
