function scr_player_startgate() //scr_player_startgate
{
    hsp = 0
    mach2 = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 1
    machhitAnim = 0
    sprite_index = spr_entergate
    if (floor(image_index) == (image_number - 1))
        image_speed = 0
    else
        image_speed = 0.35
}

