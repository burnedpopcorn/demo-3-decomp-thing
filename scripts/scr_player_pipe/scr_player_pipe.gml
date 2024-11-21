function scr_player_pipe() //scr_player_pipe
{
    mach2 = 0
    landAnim = 0
    vsp = 0
    hsp = 0
    cutscene = 1
    visible = false
    var pipespeed = 15
    if key_up
        var button = "up"
    else if key_down
        button = "down"
    else if key_left
        button = "left"
    else if key_right
        button = "right"
    else
        button = "na"
    if place_meeting(x, y, obj_pipedirection)
    {
        with (instance_place(x, y, obj_pipedirection))
        {
            if (button == pipedirection4)
            {
                if (other.pipedirection != pipedirection4)
                {
                    other.pipedirection = pipedirection4
                    if (other.pipedirection == "up" || other.pipedirection == "down")
                    {
                        var centerX = x + 32
                        var centerY = y
                    }
                    else if (other.pipedirection == "left" || other.pipedirection == "right")
                    {
                        centerX = x
                        centerY = y + 16
                    }
                    other.x = centerX
                    other.y = centerY
                }
            }
            else if (button == pipedirection3)
            {
                if (other.pipedirection != pipedirection3)
                {
                    other.pipedirection = pipedirection3
                    if (other.pipedirection == "up" || other.pipedirection == "down")
                    {
                        centerX = x + 32
                        centerY = y
                    }
                    else if (other.pipedirection == "left" || other.pipedirection == "right")
                    {
                        centerX = x
                        centerY = y + 16
                    }
                    other.x = centerX
                    other.y = centerY
                }
            }
            else if (button == pipedirection2)
            {
                if (other.pipedirection != pipedirection2)
                {
                    other.pipedirection = pipedirection2
                    if (other.pipedirection == "up" || other.pipedirection == "down")
                    {
                        centerX = x + 32
                        centerY = y
                    }
                    else if (other.pipedirection == "left" || other.pipedirection == "right")
                    {
                        centerX = x
                        centerY = y + 16
                    }
                    other.x = centerX
                    other.y = centerY
                }
            }
            else if (other.pipedirection != pipedirection)
            {
                other.pipedirection = pipedirection
                if (other.pipedirection == "up" || other.pipedirection == "down")
                {
                    centerX = x + 32
                    centerY = y
                }
                else if (other.pipedirection == "left" || other.pipedirection == "right")
                {
                    centerX = x
                    centerY = y + 16
                }
                other.x = centerX
                other.y = centerY
            }
        }
    }
    if (pipedirection == "up")
    {
        var xx = 0
        var yy = (-pipespeed)
        sprite_index = spr_player_pipeup
    }
    else if (pipedirection == "down")
    {
        xx = 0
        yy = pipespeed
        sprite_index = spr_player_pipedown
    }
    else if (pipedirection == "right")
    {
        xx = pipespeed
        yy = 0
        sprite_index = spr_player_pipe
        xscale = 1
    }
    else if (pipedirection == "left")
    {
        xx = (-pipespeed)
        yy = 0
        sprite_index = spr_player_pipe
        xscale = -1
    }
    else
    {
        xx = pipespeed
        yy = 0
    }
    x += xx
    y += yy
}

