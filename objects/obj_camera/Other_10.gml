switch global.hitstunenabled
{
    case 1:
        global.hitstunalarm = (round(global.defaulttime / room_speed)) * 3
        break
    default:
        global.hitstunalarm = (round(global.freezeframetimer / room_speed)) * 3
        break
}

if (global.freezeframe == false)
{
    global.freezeframetimer = clamp((global.freezeframetimer - 50), 1, 185)
    if (global.can_freeze == true && global.hitstunenabled != 0)
    {
        with (obj_player)
        {
            if (state != (122 << 0))
            {
                frozenstate = state
                frozenspriteindex = sprite_index
                frozenimageindex = image_index
                frozenimagespeed = image_speed
                frozenmovespeed = movespeed
                frozengrav = grav
                frozensmash = freefallsmash
                frozenhsp = hsp
                frozenvsp = vsp
                frozenjumpbuffer = input_buffer_jump
                for (var i = 0; i < 10; i++)
                    frozenalarm[i] = alarm_get(i)
                state = (122 << 0)
            }
        }
        with (obj_baddie)
        {
            if (state != (201 << 0))
            {
                frozenstate = state
                frozenspriteindex = sprite_index
                frozenimageindex = image_index
                frozenimagespeed = image_speed
                frozenmovespeed = movespeed
                frozengrav = grav
                frozenhsp = hsp
                frozenvsp = vsp
                if (state != (200 << 0))
                    state = (201 << 0)
            }
        }
        with (group_afterimageeffects)
        {
            for (i = 0; i < 2; i++)
                frozenalarm[i] = alarm_get(i)
            frozen = true
        }
        for (i = 0; i < 3; i++)
            frozenalarm[i] = alarm_get(i)
        for (i = 0; i < 3; i++)
        {
            if (alarm_get(i) > -1)
                alarm_set(i, -1)
        }
        frozen = true
        with (obj_timeattack)
        {
            frozenalarm = alarm[1]
            alarm[1] = -1
            frozen = true
        }
        with (obj_tv)
        {
            frozenalarm = alarm[1]
            alarm[1] = -1
            frozen = true
        }
        global.freezeframe = true
        with (obj_camera)
            angle = random_range((-maxangle), maxangle)
    }
}
