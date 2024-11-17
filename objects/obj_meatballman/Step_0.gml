event_inherited()
state = meatstate
if (meatstate == (4 << 0) && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
    {
        ID = other.id
        stunnedcheck = 0
        checkstate = (4 << 0)
    }
}
else if (meatstate != (4 << 0))
    birdcreated = false
if (grabbed == 0)
{
    depth = 1
    if (meatstate == (3 << 0))
    {
        meatstate = (4 << 0)
        sprite_index = spr_meatball_idle
        stunned = stuntime_max
    }
}
else if (grabbed == true)
{
    meatstate = (3 << 0)
    stunned = stuntime_max
    sprite_index = spr_meatball_idle
}
if (meatstate == (0 << 0))
{
    vsp = 0
    sprite_index = spr_meatball_idle
}
if (obj_player.state == (74 << 0) && obj_player.grounded)
{
    if point_in_rectangle(x, y, (camera_get_view_x(view_camera[0]) - 16), (camera_get_view_y(view_camera[0]) - 16), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 16), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 16))
    {
        if (meatstate == (0 << 0))
        {
            meatstate = (2 << 0)
            hsp = 0
            movespeed = 0
        }
        else if grounded
        {
            vsp = -6
            meatstate = (4 << 0)
            stunned = stuntime_max
        }
    }
}
if (meatstate == (2 << 0))
{
    image_index = 0
    sprite_index = spr_meatball_idle
    if (grounded == true)
        meatstate = (1 << 0)
}
if (meatstate == (1 << 0))
{
    if (grounded == true)
        hsp = sign(image_xscale) * movespeed
    if (movespeed < 8)
        movespeed++
    if ((scr_solid((x + sign(image_xscale)), y) && (!(scr_slope_ext((x + sign(hsp)), y)))) || place_meeting((x + sign(image_xscale)), y, obj_hallway))
        image_xscale *= -1
    sprite_index = spr_meatball_roll
}
if (meatstate == (4 << 0))
{
    sprite_index = spr_meatball_idle
    if (grounded && vsp > 0)
        hsp = 0
    if (stunned <= 0)
    {
        vsp = -2
        meatstate = (1 << 0)
        sprite_index = spr_meatball_roll
    }
}
if (x <= -128 || x >= (room_width + 128) || y >= (room_height + 128))
{
    thrown = 0
    depth = 0
    grabbed = 0
    playerid = obj_player1
    hsp = 0
    vsp = 0
    grav = 0.5
    flash = 1
    hp = 1
    grounded = 1
    rolling = false
    movespeed = 0
    activated = false
    image_speed = 0.35
    stunned = 0
    stuntime_max = 50
    state = (0 << 0)
    meatstate = (0 << 0)
    stuntouchbuffer = 0
    stuntouchbuffer_max = 50
    x = xstart
    y = ystart
    with (instance_create((x + (random_range(-5, 5))), (y + (random_range(-5, 5))), obj_balloonpop))
    {
        image_speed = 0.35
        sprite_index = spr_bigpoofclouds
        image_angle = choose(0, 90, 180, 270)
    }
}
if (thrown == false && grabbed == false)
    stunned--
else if (thrown == true)
    stunned = stuntime_max
stunned = clamp(stunned, 0, stuntime_max)
stuntouchbuffer = clamp(stuntouchbuffer--, 0, stuntouchbuffer_max)
