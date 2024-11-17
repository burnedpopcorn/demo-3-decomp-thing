with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (18 << 0) || state == (126 << 0)))
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
        if place_meeting((x + sign(hsp)), (y + sign(vsp)), other.id)
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
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == (24 << 0) || obj_player1.state == 9))
    {
        initialhsp = 8 * sign(other.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
}
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (18 << 0) || state == (126 << 0)))
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
        if place_meeting((x + sign(hsp)), (y + sign(vsp)), other.id)
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
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == (24 << 0) || obj_player2.state == 9))
    {
        initialhsp = 8 * sign(other.image_xscale)
        initialvsp = random_range(-4, -1)
        event_user(0)
    }
}
if (global.ratmode == false)
    instance_destroy()
