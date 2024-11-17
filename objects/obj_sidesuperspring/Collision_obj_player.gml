with (other)
{
    if (state == 2 || state == (11 << 0) || state == (117 << 0) || state == 86 || state == 18 || state == 37 || state == 91 || state == 70 || state == 69 || state == (128 << 0))
    {
        other.image_speed = 0.5
        if (xscale != other.image_xscale)
            xscale = other.image_xscale
        mach3dash = true
        mach3dashbuffer = 25
    }
}
