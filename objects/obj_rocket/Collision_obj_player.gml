with (other)
{
    if (state != (128 << 0))
    {
        xscale = other.image_xscale
        state = (128 << 0)
        sprite_index = spr_rocketstart
        image_index = 0
        if (movespeed < 14)
            movespeed = 14
        x = other.x
        if (sprite_index == spr_player_rocketstart)
            y = other.y - 18
    }
}
