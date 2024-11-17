if (bulletbuffer == 0 && global.freezeframe == false)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && instance_exists(other.baddieID) && baddieID != other.id && baddieID.state != 109 && baddieID.state != 200)
        {
            if (baddieID.state == 106 && baddieID.thrown == 1)
            {
                other.baddieID.initialvsp = baddieID.hsp / 1.5
                other.baddieID.initialhsp = baddieID.vsp / 1.5
                baddieID.grabbedby = other.baddieID.grabbedby
                if (other.baddieID.hp > 1)
                {
                    other.bulletbuffer = 25
                    scr_soundeffect(sfx_bumpwall)
                    if (other.baddieID.stunned < 100)
                        other.baddieID.stunned = 100
                    other.baddieID.vsp = -5
                    other.baddieID.state = 106
                    other.baddieID.image_index = 0
                    other.baddieID.hp -= 1
                    other.baddieID.thrown = 0
                }
                else
                    instance_destroy(other.baddieID)
            }
        }
    }
}
