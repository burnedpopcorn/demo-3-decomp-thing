with (other.id)
{
    if (state == 22)
    {
        instance_create((x + xscale * 40), y, obj_punchdust)
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = 46
        baddiegrabbedID = other.id
        other.playerid = object_index
        other.grabbed = 1
    }
    if (state == 0 || (grounded && state == 37 && other.thrown == 0 && other.grabbed == 0))
    {
        x = other.x
        y = other.y
        state = 84
        movespeed = 0
        vsp = 0
        sprite_index = spr_player_barrelidle
        repeat (5)
        {
            with (instance_create((other.x + (random_range(-100, 100))), (other.y + (random_range(-100, 100))), obj_balloonpop))
                sprite_index = spr_shotgunimpact
        }
        with (instance_create((other.x + (random_range(-16, 16))), (other.y + (random_range(-16, 16))), obj_balloonpop))
        {
            image_speed = 0.35
            sprite_index = spr_bigpoofclouds
            image_angle = choose(0, 90, 180, 270)
        }
        instance_destroy(other.id)
    }
}
