if instance_exists(ID)
{
    with (other.id)
    {
        if (other.ID.sprite_index == spr_coolpinea_taunt)
        {
            if (instance_exists(baddieID) && baddieID != other.id && baddieID != other.ID)
            {
                if (baddieID.state == 106 && baddieID.thrown == 1)
                {
                    if (other.ID.sprite_index != spr_coolpinea_parry && other.ID.parry == 0)
                    {
                        other.ID.sprite_index = spr_coolpinea_parry
                        other.ID.image_index = 0
                        other.ID.parrying = 1
                        other.ID.hurtedplayeridx = x
                        other.ID.tauntreset = 100
                        other.ID.taunttimer = 0
                        other.ID.state = 94
                        instance_create(x, y, obj_bangeffect)
                        instance_create(x, y, obj_slapstar)
                        scr_soundeffect(sfx_taunt)
                    }
                    var targetxscale = other.ID.image_xscale
                    with (baddieID)
                    {
                        if (!audio_is_playing(sfx_killingblow))
                            scr_soundeffect(sfx_killingblow)
                        image_xscale = (-sign(targetxscale))
                        stunned = 200
                        alarm[3] = 3
                        alarm[1] = 5
                        thrown = 1
                        vsp = -5
                        hsp = targetxscale * 10
                        state = 106
                        grav = 0.5
                        flash = 1
                        with (obj_camera)
                        {
                            shake_mag = 3
                            shake_mag_acc = 3 / room_speed
                        }
                    }
                }
            }
        }
    }
}
