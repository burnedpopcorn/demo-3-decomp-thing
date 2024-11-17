function scr_savefile_copy() //gml_Script_scr_savefile_copy
{
    scr_getinput()
    if (vanity_to_file > -1 && (key_up2 || keyboard_check_pressed(vk_up)) && global.savefilechoosen == false && (!key_jump2) && selectedcopy_to_file == false)
    {
        vanity_to_file -= 1
        var value = -1
        if (copy_to_file == 0)
            copy_to_file = 2
        else
            copy_to_file = clamp((copy_to_file + value), 0, 2)
        scr_soundeffect(sfx_step)
    }
    if (vanity_to_file < 1 && (key_down2 || keyboard_check_pressed(vk_down)) && global.savefilechoosen == false && (!key_jump2) && selectedcopy_to_file == false)
    {
        vanity_to_file += 1
        value = 1
        if (copy_to_file == 2)
            copy_to_file = 0
        else
            copy_to_file = clamp((copy_to_file + value), 0, 2)
        scr_soundeffect(sfx_step)
    }
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && overwriteconfirmselection > 0 && global.savefilechoosen == false && (!key_jump2) && selectedcopy_to_file == true)
    {
        overwriteconfirmselection -= 1
        scr_soundeffect(sfx_step)
    }
    if ((key_right2 || keyboard_check_pressed(vk_right)) && overwriteconfirmselection < 1 && global.savefilechoosen == false && (!key_jump2) && selectedcopy_to_file == true)
    {
        overwriteconfirmselection += 1
        scr_soundeffect(sfx_step)
    }
    if (inputbuffer == false)
    {
        if ((key_jump || keyboard_check_pressed(vk_return)) && global.savefile_optionselected == true && selectedcopy_to_file == false)
        {
            if (copy_to_file != selectedfile)
                selectedcopy_to_file = true
            scr_soundeffect(sfx_step)
            inputbuffer = true
            alarm[0] = 5
        }
        if (selectedcopy_to_file == true && inputbuffer == false)
        {
            if (overwriteconfirmselection == 1 && (key_jump || keyboard_check_pressed(vk_return)) && global.savefile_optionselected == true)
            {
                file_copy(("playerData_" + global.savefile + ".ini"), ("playerData_" + file[copy_to_file] + ".ini"))
                scr_soundeffect(sfx_collecttoppin)
                overwriteconfirmselection = 0
                selectedcopy_to_file = false
                inputbuffer = true
                alarm[0] = 5
            }
            if (overwriteconfirmselection == 0 && (key_jump || keyboard_check_pressed(vk_return)) && global.savefile_optionselected == true)
            {
                scr_soundeffect(sfx_enemyprojectile)
                overwriteconfirmselection = 0
                selectedcopy_to_file = false
                inputbuffer = true
                alarm[0] = 5
            }
        }
    }
    if (vanity_to_file <= -1)
        file1y = approach(file1y, 96, 5)
    else
        file1y = approach(file1y, 128, 5)
    if (vanity_to_file >= 1)
        file2y = approach(file2y, 96, 5)
    else
        file2y = approach(file2y, 128, 5)
}

