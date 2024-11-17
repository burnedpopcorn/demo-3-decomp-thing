var player = (global.coop == true ? instance_nearest(x, y, obj_player) : obj_player1)
with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (91 << 0) || state == (117 << 0) || state == (18 << 0) || state == (126 << 0)))
    {
        with (other)
        {
            initialhsp = 8 * sign(other.image_xscale)
            initialvsp = random_range(-4, -1)
            event_user(0)
        }
    }
    if (state == (25 << 0) || state == (126 << 0))
    {
        if place_meeting((x + hsp), (y + vsp), other.id)
        {
            with (other)
            {
                initialhsp = 8 * sign(other.image_xscale)
                initialvsp = random_range(-4, -1)
                event_user(0)
            }
        }
    }
}
if (place_meeting(x, (y + 1), obj_player1) || place_meeting(x, (y - 1), obj_player1) || place_meeting((x - 1), y, obj_player1) || place_meeting((x + 1), y, obj_player1))
{
    if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state == (74 << 0) && obj_player1.freefallsmash >= 10)
    {
        initialhsp = 8 * sign(player.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == (24 << 0) || obj_player1.state == 9))
    {
        initialhsp = 8 * sign(player.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
}
if (place_meeting(x, (y + 40), obj_player1) && obj_player1.state == (63 << 0) && (obj_player1.superspringjump == 1 || obj_player1.character == "PZ") && object_index != obj_metalblockhard)
{
    initialhsp = 8 * sign(player.image_xscale)
    initialvsp = random_range(-4, -1)
    event_user(0)
}
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (91 << 0) || state == (117 << 0) || state == (18 << 0) || state == (126 << 0)))
    {
        with (other)
        {
            initialhsp = 8 * sign(other.image_xscale)
            initialvsp = random_range(-4, -1)
            event_user(0)
        }
    }
    if (state == (25 << 0) || state == (126 << 0))
    {
        if place_meeting((x + hsp), (y + vsp), other.id)
        {
            with (other)
            {
                initialhsp = 8 * sign(other.image_xscale)
                initialvsp = random_range(-4, -1)
                event_user(0)
            }
        }
    }
}
if (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2) || place_meeting((x - 1), y, obj_player2) || place_meeting((x + 1), y, obj_player2))
{
    if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state == (74 << 0) && obj_player2.freefallsmash >= 10)
    {
        initialhsp = 8 * sign(player.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == (24 << 0) || obj_player2.state == 9))
    {
        initialhsp = 8 * sign(player.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
}
if (place_meeting(x, (y + 40), obj_player2) && obj_player2.state == (63 << 0) && (obj_player2.superspringjump == 1 || obj_player2.character == "PZ") && object_index != obj_metalblockhard)
{
    initialhsp = 8 * sign(player.image_xscale)
    initialvsp = random_range(-4, -1)
    event_user(0)
}
