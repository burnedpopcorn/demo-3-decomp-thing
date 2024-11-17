if (global.freezeframe == false)
{
    if place_meeting(x, (y - 1), obj_player1)
    {
        with (obj_player1)
        {
            if (cutscene == 0 && state != (122 << 0) && state != (25 << 0))
            {
                state = 60
                if (movespeed < 12)
                    movespeed = 12
            }
        }
    }
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
            if (cutscene == 0 && state != (122 << 0) && state != (25 << 0))
            {
                state = 60
                if (movespeed < 12)
                    movespeed = 12
            }
        }
    }
}
if (global.panic == 1 && turned == false && can_turn == true)
{
    image_xscale *= -1
    x = xstart - image_xscale * 32
    turned = 1
}
