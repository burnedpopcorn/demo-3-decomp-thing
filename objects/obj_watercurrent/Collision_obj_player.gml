if (other.in_water == true)
{
    with (other)
    {
        if (state != (87 << 0))
        {
            if (movespeed <= 3 || xscale == sign(other.image_xscale))
            {
                sprite_index = spr_slipnslide
                state = (87 << 0)
                xscale = sign(other.image_xscale)
            }
            else if (movespeed > 3)
                movespeed--
        }
    }
}
