if (global.freezeframe == false)
{
    if place_meeting(x, (y - 1), obj_player1)
    {
        with (obj_player1)
        {
            if (cutscene == 0 && state != (122 << 0) && state != (25 << 0))
            {
                if (state == 24)
                    state = 18
                else if (state != 18)
                    state = 60
                if (movespeed < 12)
                    movespeed = 12
            }
            if (movespeed > 0 && move == 0 && state == (0 << 0))
            {
                sprite_index = spr_move
                movespeed -= 0.1
            }
        }
    }
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
            if (cutscene == 0 && state != (122 << 0))
            {
                if (state == 24)
                    state = 18
                else if (state != 18)
                    state = 60
                if (movespeed < 12)
                    movespeed = 12
            }
        }
    }
}
