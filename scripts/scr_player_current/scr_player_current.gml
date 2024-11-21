function scr_player_current() //scr_player_current
{
    static movehsp = 0
    static hdir = -1
    static movevsp = 0
    static vmovespeed = 0
    static vdir = -1

    var drafty = 0
    hsp = movespeed * hdir + movehsp
    vsp = vmovespeed * vdir + movevsp
    with (instance_place(x, y, obj_watercurrent))
    {
        other.sprite_index = other.spr_slipnslide
        other.xscale = sign(image_xscale)
        static hdir = sign(image_xscale)
        if (other.movespeed < 10)
            other.movespeed += 1
    }
    with (instance_place(x, y, obj_waterdraft))
    {
        other.sprite_index = other.spr_machfreefall
        static vdir = (-sign(image_yscale))
        if (vmovespeed < 10)
            vmovespeed += 1
        if (sign(image_yscale) == 1)
            drafty = 1
    }
    move = key_right + key_left
    static movehsp = 4 * sign(move)
    if (move != 0)
        xscale = move
    if key_up
        movevsp = -4
    if key_down
        movevsp = 4
    if (in_water == false || (!(place_meeting(x, y, obj_watercurrent))))
    {
        if (movespeed > 0)
            movespeed--
    }
    if (in_water == false || (!(place_meeting(x, y, obj_waterdraft))))
    {
        if (vmovespeed > 0)
            vmovespeed--
    }
    if ((in_water == false || ((!(place_meeting(x, y, obj_watercurrent))) && (!(place_meeting(x, y, obj_waterdraft))))) && movespeed <= 5)
    {
        if (drafty == 1)
        {
            if (vsp > -8)
                vsp = -8
            state = 58
            sprite_index = spr_machfreefall
            jumpstop = 1
        }
        else
            state = 60
    }
    image_speed = 0.35
}

