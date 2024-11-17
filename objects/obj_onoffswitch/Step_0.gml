if ((sprite_index == spr_onoffswitch_bluetored || sprite_index == spr_onoffswitch_redtoblue) && floor(image_index) == (image_number - 1))
{
    if (global.switchblock == 0)
        sprite_index = spr_onoffswitch_red
    else
        sprite_index = spr_onoffswitch_blue
}
if (sprite_index != spr_onoffswitch_bluetored && sprite_index != spr_onoffswitch_redtoblue)
{
    if (global.switchblock == 0)
        sprite_index = spr_onoffswitch_red
    else
        sprite_index = spr_onoffswitch_blue
}
var player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
if (global.coop == false)
    player = obj_player1
if ((player.state == 22 || player.state == (111 << 0)) && place_meeting(x, y, player))
{
    with (player)
    {
        if (state == 22 || state == (111 << 0))
        {
            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
            suplexdashtimer = 7
            image_index = 0
            state = (57 << 0)
            substate = 1
            movespeed = 5
            vsp = -3
            global.switchblock = (!global.switchblock)
            with (obj_onoffswitch)
            {
                if (global.switchblock == 0)
                    sprite_index = spr_onoffswitch_bluetored
                else
                    sprite_index = spr_onoffswitch_redtoblue
                can_switch = false
                alarm[0] = 90
            }
        }
    }
    if (can_switch == true)
    {
        global.switchblock = (!global.switchblock)
        with (obj_onoffswitch)
        {
            if (global.switchblock == 0)
                sprite_index = spr_onoffswitch_bluetored
            else
                sprite_index = spr_onoffswitch_redtoblue
            can_switch = false
            alarm[0] = 90
        }
    }
}
