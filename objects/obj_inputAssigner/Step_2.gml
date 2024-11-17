with (obj_player)
{
    var _pindex = object_index == obj_player1
    var _dvc = other.player_input_device[_pindex]
    if (state != other.prevstate[_pindex])
    {
        switch state
        {
            case (57 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case (2 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.8)
                break
            case (6 << 0):
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case (7 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.85)
                break
            case (73 << 0):
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case (27 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                if (sprite_index == spr_bombpepend)
                    GamepadSetVibration(1, 1, 1, 0.9)
                break
            case (63 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.85)
                break
            case 75:
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case (93 << 0):
                GamepadSetVibration(1, 1, 1, 0.9)
                break
            case (24 << 0):
                if (sprite_index == spr_knightpepthunder)
                    GamepadSetVibration(1, 1, 1, 0.9)
                break
            case (114 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.65)
                break
            case (77 << 0):
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case (33 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case (72 << 0):
                if (sprite_index != spr_hitwall)
                    GamepadSetVibration(1, 0.8, 0.8, 0.6)
                else
                    GamepadSetVibration(1, 1, 1, 0.85)
                break
            case (22 << 0):
                GamepadSetVibration(1, 0.2, 0.2, 0.9)
                break
            case (46 << 0):
                GamepadSetVibration(1, 0.2, 0.2, 0.8)
                break
            default:
                GamepadSetVibration(0, 0, 0, other)
                break
        }

        other.prevstate[_pindex] = state
    }
}
for (var p = 0; p < array_length(vibration); p++)
{
    _dvc = player_input_device[p]
    gamepad_set_vibration(_dvc, vibration[p][0], vibration[p][1])
}
