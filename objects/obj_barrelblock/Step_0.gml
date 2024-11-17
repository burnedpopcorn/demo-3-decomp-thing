with (obj_player)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && state == (86 << 0))
        instance_destroy(other.id)
}
