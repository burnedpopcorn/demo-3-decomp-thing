var player = (global.coop == true ? instance_nearest(x, y, obj_player) : obj_player1)
with (player)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (91 << 0) || state == (117 << 0) || state == (18 << 0) || state == (126 << 0)))
    {
        with (other)
        {
            initialhsp = random_range(-4, 4)
            initialvsp = random_range(-4, 0)
            event_user(0)
        }
    }
    if (state == (25 << 0) || state == (126 << 0))
    {
        if place_meeting((x + hsp), (y + vsp), other.id)
        {
            with (other)
            {
                initialhsp = random_range(-4, 4)
                initialvsp = random_range(-4, 0)
                event_user(0)
            }
        }
    }
}
if (place_meeting(x, (y + 1), player) || place_meeting(x, (y - 1), player) || place_meeting((x - 1), y, player) || place_meeting((x + 1), y, player))
{
    if (place_meeting(x, (y - 1), player) && player.state == (74 << 0) && player.freefallsmash >= 10)
        event_user(0)
    if (place_meeting(x, (y - 1), player) && (player.state == (24 << 0) || player.state == 9))
        event_user(0)
}
if (place_meeting(x, (y + 40), player) && player.state == (63 << 0) && (player.superspringjump == 1 || player.character == "PZ") && object_index != obj_metalblockhard)
    event_user(0)
if (destroyed == true)
{
    respawnblock--
    visible = false
    x = -960
    y = -100
    mask_index = spr_null
}
if (destroyed == true && respawnblock <= 0)
{
    mask_index = sprite_index
    if ((!(place_meeting(xstart, ystart, obj_player))) && (!(place_meeting(xstart, ystart, obj_baddie))))
    {
        instance_create((xstart + sprite_width / 2), (ystart + sprite_height / 2), obj_cloudeffect)
        repeat (3)
            instance_create((xstart + sprite_width / 2 + (random_range(-5, 5))), (ystart + sprite_height / 2 + (random_range(-5, 5))), obj_cloudeffect)
        respawnblock = 100
        destroyed = false
        initialhsp = random_range(-4, 4)
        initialvsp = random_range(-4, 0)
        visible = true
        x = xstart
        y = ystart
    }
}
