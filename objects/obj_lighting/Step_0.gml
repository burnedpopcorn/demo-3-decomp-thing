if (can_draw == false)
    visible = false
else
    visible = true
switch room
{
    case ancient_10:
        can_draw = true
        var _dark = (clamp(camera_get_view_y(view_camera[0]), 864, 2756)) / 2756
        targetdarkness = clamp((_dark * 0.85), 0.75, 0.85)
        break
    case ancient_10_2:
        can_draw = true
        _dark = (clamp(camera_get_view_y(view_camera[0]), 864, 1632)) / 1632
        targetdarkness = clamp((_dark * 0.85), 0.75, 0.85)
        break
    case factory_8:
        can_draw = true
        _dark = (clamp(camera_get_view_y(view_camera[0]), 864, 1632)) / 1632
        targetdarkness = clamp((_dark * 0.85), 0.75, 0.85)
        break
}

darkness = approach(darkness, targetdarkness, 0.015)
switch room
{
    case desert_1:
    case desert_2:
    case desert_3:
    case desert_4:
    case desert_5:
        if ((!global.panic) && (!global.desertnight))
            global.visual_temperature = (1 << 0)
        else
            global.visual_temperature = (0 << 0)
        break
    default:
        global.visual_temperature = (0 << 0)
        break
}

