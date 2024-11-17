if (other.in_water == true)
{
    with (other)
    {
        if (state != (87 << 0))
        {
            sprite_index = spr_machfreefall
            state = (87 << 0)
        }
    }
}
