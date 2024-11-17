if (global.panic == 1 && global.timeattack == true)
{
    if ((obj_player1.spotlight == 1 && other.object_index == obj_player1) || (obj_player1.spotlight == 0 && other.object_index == obj_player2))
    {
        if (other.state != (19 << 0))
        {
            with (instance_create((other.x + (random_range(-16, 16))), (other.y + (random_range(-16, 16))), obj_balloonpop))
            {
                image_speed = 0.35
                sprite_index = spr_bigpoofclouds
                image_angle = choose(0, 90, 180, 270)
            }
            sprite_index = spr_pizzaportalend
            image_index = 0
            image_speed = 0.35
            depth = -9
            scr_soundeffect(sfx_box)
            with (obj_player1)
            {
                state = (19 << 0)
                x = other.x
                y = other.y
                hsp = 0
                vsp = 0
            }
            if (global.coop == true)
            {
                with (obj_player2)
                {
                    state = (19 << 0)
                    x = other.x
                    y = other.y
                    hsp = 0
                    vsp = 0
                }
            }
        }
    }
}
