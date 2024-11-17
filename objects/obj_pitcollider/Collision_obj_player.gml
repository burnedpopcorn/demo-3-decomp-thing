with (other.id)
{
    if (state != 55 && (!instance_exists(obj_fadeout)) && (!(place_meeting(x, y, obj_hallway))) && (!(place_meeting(x, y, obj_pitfall))))
    {
        repeat (3)
        {
            with (instance_create((other.targetx + (random_range(-32, 32))), (other.targety + (random_range(-32, 32)) - 40), obj_balloonpop))
                sprite_index = spr_shotgunimpact
        }
        instance_create(other.targetx, (other.targety - 50), obj_handgrabber)
        global.pausecombotime = true
        obj_tv.alarm[1] = 75
        x = other.targetx
        y = other.targety
        visible = true
        state = 73
        alarm[8] = 80
        alarm[7] = 50
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        with (obj_tv)
        {
            _message = choose("OW!", "OUCH!", "OH!", "WOH!")
            chose = 0
        }
        movespeed = 1
        vsp = -5
        timeuntilhpback = 300
        grav = 0.5
    }
}
