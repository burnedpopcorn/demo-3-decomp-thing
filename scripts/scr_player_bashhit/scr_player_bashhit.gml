function scr_player_bashhit() //gml_Script_scr_player_bashhit
{
    mach2 = 0
    anger = 100
    if (global.freezeframe == false)
    {
        if ((sprite_index == spr_player_bashblow1 || spr_finishingblow2 || spr_finishingblow3 || spr_finishingblow4 || spr_finishingblow5) && floor(image_index) >= (image_number - 1))
        {
            sprite_index = spr_player_jugglebash
            vsp = -14
            state = 58
            jumpAnim = 1
            suplexmove = 0
        }
        if (sprite_index == spr_player_bashblow2 && floor(image_index) >= (image_number - 3))
        {
            sprite_index = spr_player_jugglebash
            vsp = -15
            state = 58
            jumpAnim = 1
            suplexmove = 0
        }
        if (sprite_index == spr_player_bashblow3 && floor(image_index) >= (image_number - 3))
        {
            sprite_index = spr_player_jugglebash
            vsp = -12
            state = 58
            jumpAnim = 1
            suplexmove = 0
        }
        if (sprite_index == spr_player_bashblow4 && floor(image_index) >= (image_number - 3))
        {
            sprite_index = spr_player_jugglebash
            vsp = -12
            state = 58
            jumpAnim = 1
            suplexmove = 0
        }
        if (sprite_index == spr_player_bashblow5 && floor(image_index) >= (image_number - 3))
        {
            sprite_index = spr_player_jugglebash
            vsp = -10
            state = 58
            jumpAnim = 1
            suplexmove = 0
        }
    }
    if (sprite_index != spr_player_jugglebash)
    {
        vsp = 0
        hsp = 0
    }
    if (global.freezeframe == false)
        image_speed = 0.35
    else
        image_speed = 0
}

