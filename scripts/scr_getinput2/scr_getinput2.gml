function scr_getinput2() //scr_getinput2
{
    gamepad_set_axis_deadzone(1, 0.4)
    key_up = false
    key_up2 = false
    key_right = false
    key_right2 = false
    key_left = false
    key_left2 = false
    key_down = false
    key_down2 = false
    key_jump = false
    key_jump2 = false
    key_slap = false
    key_slap2 = false
    key_taunt = false
    key_taunt2 = false
    key_attack = false
    key_attack2 = false
    key_shoot = false
    key_shoot2 = false
    key_start = false
    key_escape = false
    if (global.shellactivate == false)
    {
        key_up = (keyboard_check(global.key_upN) || gamepad_button_check(1, global.key_upCN) || gamepad_axis_value(1, gp_axislv) < 0)
        key_up2 = (keyboard_check_pressed(global.key_upN) || gamepad_button_check_pressed(1, global.key_upCN) || (gamepad_axis_value(1, gp_axislv) < -0.5 && stickpressed == 0))
        key_right = (keyboard_check(global.key_rightN) || gamepad_button_check(1, global.key_rightCN) || gamepad_axis_value(1, gp_axislh) > 0)
        key_right2 = (keyboard_check_pressed(global.key_rightN) || gamepad_button_check_pressed(1, global.key_rightCN) || (gamepad_axis_value(1, gp_axislh) > 0.5 && stickpressed == 0))
        key_left = (-((keyboard_check(global.key_leftN) || gamepad_button_check(1, global.key_leftCN) || gamepad_axis_value(1, gp_axislh) < 0)))
        key_left2 = (-((keyboard_check_pressed(global.key_leftN) || gamepad_button_check_pressed(1, global.key_leftCN) || (gamepad_axis_value(1, gp_axislh) < -0.5 && stickpressed == 0))))
        key_down = (keyboard_check(global.key_downN) || gamepad_button_check(1, global.key_downCN) || gamepad_axis_value(1, gp_axislv) > 0)
        key_down2 = (keyboard_check_pressed(global.key_downN) || gamepad_button_check_pressed(1, global.key_downCN) || (gamepad_axis_value(1, gp_axislv) > 0.5 && stickpressed == 0))
        key_jump = (keyboard_check_pressed(global.key_jumpN) || gamepad_button_check_pressed(1, global.key_jumpCN))
        key_jump2 = (keyboard_check(global.key_jumpN) || gamepad_button_check(1, global.key_jumpCN))
        key_slap = (keyboard_check(global.key_slapN) || gamepad_button_check(1, global.key_slapCN))
        key_slap2 = (keyboard_check_pressed(global.key_slapN) || gamepad_button_check_pressed(1, global.key_slapCN))
        key_taunt = (keyboard_check(global.key_tauntN) || gamepad_button_check(1, global.key_tauntCN))
        key_taunt2 = (keyboard_check_pressed(global.key_tauntN) || gamepad_button_check_pressed(1, global.key_tauntCN))
        key_attack = (keyboard_check(global.key_attackN) || gamepad_button_check(1, global.key_attackCN) || gamepad_button_check(1, gp_face2) || gamepad_button_check(1, gp_shoulderrb))
        key_attack2 = (keyboard_check_pressed(global.key_attackN) || gamepad_button_check_pressed(1, global.key_attackCN) || gamepad_button_check_pressed(1, gp_face2) || gamepad_button_check_pressed(1, gp_shoulderrb))
        key_shoot = (keyboard_check(global.key_shootN) || gamepad_button_check(1, global.key_shootCN))
        key_shoot2 = (keyboard_check_pressed(global.key_shootN) || gamepad_button_check_pressed(1, global.key_shootCN))
        key_start = (keyboard_check_pressed(global.key_startN) || gamepad_button_check_pressed(1, global.key_startCN))
        key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(1, gp_select))
        if (gamepad_axis_value(1, gp_axislh) > 0.5 || gamepad_axis_value(1, gp_axislh) < -0.5 || gamepad_axis_value(1, gp_axislv) > 0.5 || gamepad_axis_value(1, gp_axislv) < -0.5)
            stickpressed = 1
        else
            stickpressed = 0
        if keyboard_check_pressed(vk_f2)
        {
            ini_open("saveData.ini")
            global.key_upN = ini_write_string("ControlsKeys2", "up", 87)
            global.key_rightN = ini_write_string("ControlsKeys2", "right", 68)
            global.key_leftN = ini_write_string("ControlsKeys2", "left", 65)
            global.key_downN = ini_write_string("ControlsKeys2", "down", 83)
            global.key_jumpN = ini_write_string("ControlsKeys2", "jump", 76)
            global.key_slapN = ini_write_string("ControlsKeys2", "slap", 75)
            global.key_tauntN = ini_write_string("ControlsKeys2", "taunt", 79)
            global.key_shootN = ini_write_string("ControlsKeys2", "shoot", 73)
            global.key_attackN = ini_write_string("ControlsKeys2", "attack", 74)
            global.key_startN = ini_write_string("ControlsKeys2", "start", 80)
            global.key_upCN = ini_write_string("ControllerButton", "up", 32781)
            global.key_rightCN = ini_write_string("ControllerButton", "right", 32784)
            global.key_leftCN = ini_write_string("ControllerButton", "left", 32783)
            global.key_downCN = ini_write_string("ControllerButton", "down", 32782)
            global.key_jumpCN = ini_write_string("ControllerButton", "jump", 32769)
            global.key_slapCN = ini_write_string("ControllerButton", "slap", 32771)
            global.key_tauntCN = ini_write_string("ControllerButton", "taunt", 32772)
            global.key_shootCN = ini_write_string("ControllerButton", "shoot", 32770)
            global.key_attackCN = ini_write_string("ControllerButton", "attack", 32774)
            global.key_startCN = ini_write_string("ControllerButton", "start", 32778)
            global.key_upN = ini_read_string("ControlsKeys2", "up", 87)
            global.key_rightN = ini_read_string("ControlsKeys2", "right", 68)
            global.key_leftN = ini_read_string("ControlsKeys2", "left", 65)
            global.key_downN = ini_read_string("ControlsKeys2", "down", 83)
            global.key_jumpN = ini_read_string("ControlsKeys2", "jump", 76)
            global.key_slapN = ini_read_string("ControlsKeys2", "slap", 75)
            global.key_tauntN = ini_read_string("ControlsKeys2", "taunt", 79)
            global.key_shootN = ini_read_string("ControlsKeys2", "shoot", 73)
            global.key_attackN = ini_read_string("ControlsKeys2", "attack", 74)
            global.key_startN = ini_read_string("ControlsKeys2", "start", 80)
            global.key_upCN = ini_read_string("ControllerButton", "up", 32781)
            global.key_rightCN = ini_read_string("ControllerButton", "right", 32784)
            global.key_leftCN = ini_read_string("ControllerButton", "left", 32783)
            global.key_downCN = ini_read_string("ControllerButton", "down", 32782)
            global.key_jumpCN = ini_read_string("ControllerButton", "jump", 32769)
            global.key_slapCN = ini_read_string("ControllerButton", "slap", 32771)
            global.key_tauntCN = ini_read_string("ControllerButton", "taunt", 32772)
            global.key_shootCN = ini_read_string("ControllerButton", "shoot", 32770)
            global.key_attackCN = ini_read_string("ControllerButton", "attack", 32774)
            global.key_startCN = ini_read_string("ControllerButton", "start", 32778)
            ini_close()
            with (obj_tv)
            {
                _message = "PLAYER 2 CONTROLS RESET"
                showtext = 1
                alarm[0] = 150
            }
        }
    }
    return;
}

