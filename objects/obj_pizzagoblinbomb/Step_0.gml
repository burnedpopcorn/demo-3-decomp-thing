countdown -= 0.5
var devvsp = vsp / 2
hsp = image_xscale * movespeed
if (grounded && (!(scr_slope_ext(x, (y + 1)))))
{
    if (movespeed > 0)
        movespeed -= 0.7
    if (vsp >= 0.25)
        vsp = (-devvsp)
}
if (movespeed <= 0 && grounded && (!(scr_slope_ext(x, (y + 1)))))
    drop = true
else
    drop = false
if (vsp < 12 && vsp > 10)
    vsp += grav
if (scr_solid((x + sign(image_xscale)), y) && (!(scr_slope_ext((x + sign(image_xscale)), y))) && movespeed > 0)
{
    image_xscale *= -1
    vsp = round(movespeed) / -3
    if (movespeed >= 0.7)
        movespeed /= 4
    if (!instance_exists(bumpid))
    {
        with (instance_create(x, y, obj_bumpeffect))
            other.bumpid = id
    }
}
if place_meeting(x, (y + 1), obj_slope)
{
    with (instance_place(x, (y + 1), obj_slope))
    {
        var slope_acceleration = abs(image_yscale) / abs(image_xscale)
        if (sign(other.image_xscale) == sign(image_xscale))
        {
            if (other.movespeed > 0)
            {
                other.movespeed -= (0.8 * slope_acceleration)
                if (other.movespeed <= 0)
                    other.image_xscale = (-sign(image_xscale))
            }
        }
        else if (sign(other.image_xscale) == (-sign(image_xscale)))
        {
            if (other.movespeed < 10)
                other.movespeed += (0.7 * slope_acceleration)
        }
    }
}
if (place_meeting((x + 1), y, obj_bombblock) || place_meeting((x - 1), y, obj_bombblock) || place_meeting(x, (y - 1), obj_bombblock) || place_meeting(x, (y + 1), obj_bombblock))
{
    instance_create(x, y, obj_bombexplosion)
    instance_destroy()
}
if (countdown < 50)
    sprite_index = spr_bomblit
if (countdown <= 0)
{
    instance_create(x, y, obj_bombexplosion)
    instance_destroy()
}
devvsp = vsp / 2
