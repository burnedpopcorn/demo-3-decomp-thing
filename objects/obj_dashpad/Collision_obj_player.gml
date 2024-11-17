with (other.id)
{
    if (state == 69 || state == (110 << 0) || state == (38 << 0) || state == (39 << 0) || state == 70 || state == (71 << 0) || state == (37 << 0) || state == (77 << 0) || state == (74 << 0) || state == (92 << 0) || state == (65 << 0) || state == (58 << 0) || state == (0 << 0) || state == (22 << 0) || state == (111 << 0) || state == (66 << 0) || state == (67 << 0) || state == (68 << 0) || state == (60 << 0) || state == (15 << 0))
    {
        xscale = other.image_xscale
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
    else if (state != (122 << 0) && cutscene == false && bbox_bottom < other.bbox_bottom && (!((state == (63 << 0) || state == 24 || state == 18 || state == (120 << 0) || state == 91 || state == (17 << 0)))) && (!((state == 86 || state == (119 << 0) || (state == (117 << 0) && jetpacking == true)))))
    {
        xscale = other.image_xscale
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
    else if ((state == (63 << 0) || state == (120 << 0) || state == (17 << 0)) && bbox_bottom < other.bbox_bottom)
    {
        xscale = other.image_xscale
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
    else if (state == 91)
    {
        xscale = other.image_xscale
        if (movespeed < 14)
            movespeed = 14
        if (sprite_index == spr_mach4)
        {
            image_index = 0
            sprite_index = spr_mach3dashpad
        }
        mach3dash = true
        mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
    }
    else if (state == 24 || state == 18)
    {
        if (character == "P")
        {
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 0
                sprite_index = spr_knightdebris
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 1
                sprite_index = spr_knightdebris
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 2
                sprite_index = spr_knightdebris
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 3
                sprite_index = spr_knightdebris
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 4
                sprite_index = spr_knightdebris
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 5
                sprite_index = spr_knightdebris
            }
        }
        else if (character == "N")
        {
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 0
                sprite_index = spr_playerN_knightarmor
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 1
                sprite_index = spr_playerN_knightarmor
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 2
                sprite_index = spr_playerN_knightarmor
            }
            with (instance_create(x, y, obj_knightdebris))
            {
                image_index = 3
                sprite_index = spr_playerN_knightarmor
            }
        }
        else
        {
            repeat (6)
                instance_create(x, y, obj_metaldebris)
        }
        scr_soundeffect(sfx_bumpwall)
        scr_soundeffect(sfx_loseknight)
        image_index = 0
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        if (mach3dash == false)
            flash = 1
        sprite_index = spr_mach3dashpad
        instance_create(x, y, obj_jumpdust)
        mach3dash = true
        mach3dashbuffer = 25
        movespeed = 14
    }
    else if (state == 86)
    {
        repeat (4)
            instance_create(x, y, obj_wooddebris)
        scr_soundeffect(sfx_bumpwall)
        scr_soundeffect(sfx_loseknight)
        image_index = 0
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        if (mach3dash == false)
            flash = 1
        sprite_index = spr_mach3dashpad
        mach3dash = true
        mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
    else if (state == (119 << 0) || (state == (117 << 0) && jetpacking == true))
    {
        jetpacking = false
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        if (mach3dash == false)
            flash = 1
        image_index = 0
        sprite_index = spr_mach3dashpad
        mach3dash = true
        mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
}
