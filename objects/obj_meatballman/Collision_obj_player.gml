if (other.state == (22 << 0) && state != (0 << 0) && thrown == false)
{
    instance_create((x + other.xscale * 40), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = (46 << 0)
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
    grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}
else if (stuntouchbuffer == 0 && state != (0 << 0))
{
    stuntouchbuffer = stuntouchbuffer_max
    stuntime = stuntime_max
    meatstate = (4 << 0)
    vsp = -5
    hsp = (-(((sign(x - other.x)) * 4)))
    if (x != other.x)
        image_xscale = (-(sign(x - other.x)))
    scr_soundeffect(sfx_bumpwall)
    if (other.state == (58 << 0) && other.y < y)
    {
        other.vsp = -11
        scr_soundeffect(sfx_stompenemy)
        other.sprite_index = other.spr_stompprep
    }
}
