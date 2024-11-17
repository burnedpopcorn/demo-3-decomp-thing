with (obj_player)
{
    if place_meeting(x, (y + 1), obj_trickslope)
    {
        if (state == (70 << 0) || state == (91 << 0))
        {
            if ((key_jump || ((!(scr_solid((x + sign(hsp)), y))) && (!(scr_solid((x + hsp), y))) && place_meeting(x, (y + 1), other.id) && xscale == sign(other.image_xscale))) && other.has_tricked == false)
            {
                state = (125 << 0)
                vsp = -15
                if (character != "V")
                    sprite_index = spr_mach2jump
                else
                    sprite_index = spr_playerV_spinjump1
                suplexmove = 0
                other.has_tricked = true
                ds_list_add(global.saveroom, other.id)
            }
            else if (key_jump || ((!(scr_solid((x + sign(hsp)), y))) && (!(scr_solid((x + hsp), y))) && place_meeting(x, (y + 1), other.id) && xscale == sign(other.image_xscale)))
            {
                suplexmove = 0
                vsp = -15
                if (character != "V")
                    sprite_index = spr_mach2jump
                else
                    sprite_index = spr_playerV_spinjump1
            }
        }
    }
}
