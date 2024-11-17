with (other.id)
{
    if (state == (116 << 0))
    {
        visible = true
        flash = true
        x = other.centerX
        y = other.centerY
        if (other.pipedirection == "up")
        {
            if (other.shoot == true)
            {
                scr_soundeffect(sfx_superjumprelease)
                sprite_index = spr_superjump
                state = (63 << 0)
                vsp = -15
                superspringjump = false
                jetpacking = true
                instance_create(x, y, obj_explosioneffect)
            }
            else
                scr_soundeffect(sfx_superjumprelease)
            sprite_index = spr_superjump
            state = (63 << 0)
            superspringjump = 1
            vsp = -20
            instance_create(x, y, obj_explosioneffect)
        }
        else if (other.pipedirection == "down")
        {
            if (other.shoot == true)
            {
                vsp += 14
                state = 74
                sprite_index = spr_bodyslamfall
            }
            else
                vsp += 14
            state = 74
            sprite_index = spr_bodyslamfall
        }
        else if (other.pipedirection == "right")
        {
            if (other.shoot == true)
            {
                xscale = 1
                mach2 = 100
                machhitAnim = 0
                state = (117 << 0)
                flash = 1
                instance_create(x, y, obj_jumpdust)
                movespeed = 14
            }
            else
            {
                xscale = 1
                mach2 = 100
                machhitAnim = 0
                state = 91
                image_index = 0
                sprite_index = spr_mach3dashpad
                mach3dash = true
                mach3dashbuffer = 25
                instance_create(x, y, obj_jumpdust)
                movespeed = 14
            }
        }
        else if (other.pipedirection == "left")
        {
            if (other.shoot == true)
            {
                xscale = -1
                mach2 = 100
                machhitAnim = 0
                state = (117 << 0)
                flash = 1
                instance_create(x, y, obj_jumpdust)
                movespeed = 14
            }
            else
            {
                xscale = -1
                mach2 = 100
                machhitAnim = 0
                state = 91
                image_index = 0
                sprite_index = spr_mach3dashpad
                mach3dash = true
                mach3dashbuffer = 25
                instance_create(x, y, obj_jumpdust)
                movespeed = 14
            }
        }
        else
        {
            xscale = 1
            mach2 = 100
            machhitAnim = 0
            state = 91
            flash = 1
            sprite_index = spr_mach4
            instance_create(x, y, obj_jumpdust)
            movespeed = 14
        }
    }
}
