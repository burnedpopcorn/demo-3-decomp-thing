if ((sprite_index == spr_pipe_activate || sprite_index == spr_pipe_deactivate) && animation_end())
{
    if (sprite_index == spr_pipe_activate)
        sprite_index = spr_pipe_active
    else
        sprite_index = spr_pipe_inactive
}
var player = instance_nearest(x, y, obj_player)
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
            with (other.id)
            {
                if (sprite_index == spr_pipe_active)
                    sprite_index = spr_pipe_deactivate
                else
                    sprite_index = spr_pipe_activate
                instance_create(x, y, obj_bangeffect)
                can_switch = false
                alarm[0] = 50
            }
        }
    }
}
