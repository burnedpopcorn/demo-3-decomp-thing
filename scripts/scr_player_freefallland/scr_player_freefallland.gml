function scr_player_freefallland() //gml_Script_scr_player_freefallland
{
    mach2 = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 0
    machhitAnim = 0
    movespeed = 0
    facehurt = 1
    start_running = 1
    alarm[4] = 14
    vsp = 0
    hsp = 0
    if (key_jump2 && floor(image_index) >= 4 && floor(image_index) != (image_number - 1))
    {
        facehurt = 0
        jumpAnim = 1
        state = 58
        vsp = -12
        image_speed = 0.35
        sprite_index = spr_groundpoundjump
        image_index = 0
        scr_soundeffect(sfx_jump)
        scr_soundeffect(sfx_rollgetup)
        with (instance_create(x, y, obj_highjumpcloud2))
        {
            image_xscale = other.xscale
            sprite_index = spr_slamjumpcloud
        }
    }
    else if (floor(image_index) == (image_number - 1))
        state = 0
    image_speed = 0.35
}

