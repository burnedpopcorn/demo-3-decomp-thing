function scr_player_tackle() //gml_Script_scr_player_tackle
{
    switch substate
    {
        case 1:
            scr_player_substate_bounce()
            break
        default:
            scr_player_substate_tackle()
            break
    }

}

function scr_player_substate_tackle() //gml_Script_scr_player_substate_tackle
{
    if (character == "P")
    {
        if (movespeed < 10 && grounded)
            movespeed += 0.5
        else if (!grounded)
            movespeed = 10
    }
    if (character == "PZ")
        movespeed = 10
    if (character == "N")
    {
        if (pogo == true)
        {
            if (movespeed < 8 && grounded)
                movespeed += 0.5
            else if (!grounded)
                movespeed = 8
        }
        else if (movespeed < 9 && grounded)
            movespeed += 0.5
        else if (!grounded)
            movespeed = 9
    }
    combo = 0
    mach2 = 0
    start_running = 1
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 1
    var slowdownspeed = 11 * suplexdashtimer / 12
    hsp = xscale * (abs(movespeed - slowdownspeed))
    if (floor(image_index) >= (image_number - 1))
        image_speed = 0
    else
        image_speed = 0.35
    if (suplexdashtimer >= 12 && slowdownspeed >= 11 && (!key_attack))
    {
        image_speed = 0.35
        state = 0
        movespeed = abs(movespeed - slowdownspeed)
    }
    if (key_jump && grounded)
    {
        movespeed = 9
        sprite_index = spr_mach2jump
        state = 70
        grav = 0.5
        instance_create(x, y, obj_jumpdust)
        suplexmove = 0
        vsp = -11
    }
    if ((grounded || character == "PZ") && key_attack)
    {
        image_speed = 0.35
        if (character == "N" && pogo == true && (!key_slap2))
        {
            sprite_index = spr_playerN_pogostart
            state = (119 << 0)
            image_index = 0
            pogomovespeed = 9
        }
        else
        {
            movespeed = 9
            state = 70
        }
        grav = 0.5
    }
    if (key_down && grounded && vsp > 0)
    {
        grav = 0.5
        sprite_index = spr_crouchslip
        machhitAnim = 0
        state = 68
        movespeed = clamp((movespeed - slowdownspeed + 5), 5, 15)
    }
    suplexdashtimer += 0.35
}

function scr_player_substate_bounce() //gml_Script_scr_player_substate_bounce
{
    hsp = (-xscale) * movespeed
    movespeed = approach(movespeed, 0, 0.25)
    combo = 0
    mach2 = 0
    start_running = 1
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 1
    if (floor(image_index) >= (image_number - 1))
    {
        state = (0 << 0)
        substate = 0
    }
    image_speed = 0.35
}

