scr_getinput()
if (global.shellactivate == true)
    return;
if (global.savefilechoosen == false)
{
    if ((key_up2 || keyboard_check_pressed(vk_up)) && selectedfile > 0 && global.savefile_fileselected == false && global.savefile_optionselected == false)
    {
        selectedfile -= 1
        scr_soundeffect(sfx_step)
    }
    if ((key_down2 || keyboard_check_pressed(vk_down)) && selectedfile < 2 && global.savefile_fileselected == false && global.savefile_optionselected == false)
    {
        selectedfile += 1
        scr_soundeffect(sfx_step)
    }
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && selectedoption > 0 && global.savefile_fileselected == true && global.savefile_optionselected == false)
    {
        selectedoption -= 1
        scr_soundeffect(sfx_step)
    }
    if ((key_right2 || keyboard_check_pressed(vk_right)) && selectedoption < 2 && global.savefile_fileselected == true && global.savefile_optionselected == false)
    {
        selectedoption += 1
        scr_soundeffect(sfx_step)
    }
    if (key_jump && global.savefile_optionselected == false && global.savefile_fileselected == false)
    {
        global.savefile = file[selectedfile]
        global.savefile_fileselected = true
        scr_soundeffect(sfx_step)
    }
    else if (key_jump && inputbuffer == false && global.savefile_optionselected == false && global.savefile_fileselected == true && global.savefilechoosen == false)
    {
        switch selectedoption
        {
            case 2:
                global.savefilechoosen = true
                global.savefile_optionselected = true
                scr_soundeffect(sfx_collecttoppin)
                inputbuffer = true
                alarm[0] = 5
                break
            case 1:
                copy_to_file = selectedfile
                selectedcopy_to_file = false
                vanity_to_file = 0
                event_copy = false
                global.savefile_optionselected = true
                scr_soundeffect(sfx_collecttoppin)
                inputbuffer = true
                alarm[0] = 5
                break
            case 0:
                global.savefile_optionselected = true
                scr_soundeffect(sfx_collecttoppin)
                inputbuffer = true
                alarm[0] = 5
                break
        }

    }
    if (global.savefile_optionselected == true)
    {
        switch selectedoption
        {
            case 0:
                scr_savefile_delete()
                break
            case 1:
                event_copy = true
                scr_savefile_copy()
                break
        }

    }
}
if (key_slap2 && global.savefilechoosen == false && global.savefile_optionselected == false && global.savefile_fileselected == true)
{
    global.savefile = file[0]
    global.savefile_fileselected = false
    scr_soundeffect(sfx_enemyprojectile)
}
else if (key_slap2 && global.savefilechoosen == false && global.savefile_optionselected == true && global.savefile_fileselected == true && selectedcopy_to_file == false)
{
    delete_optionselected = 0
    selectedoption = 2
    selectedcopy_to_file = false
    vanity_to_file = 0
    event_copy = false
    file1y = 128
    file2y = 128
    global.savefile_optionselected = false
    scr_soundeffect(sfx_enemyprojectile)
}
else if (key_slap2 && global.savefilechoosen == false && global.savefile_optionselected == true && global.savefile_fileselected == true && selectedcopy_to_file == true)
{
    scr_soundeffect(sfx_enemyprojectile)
    overwriteconfirmselection = 0
    selectedcopy_to_file = false
}
else if (key_slap2 && global.savefilechoosen == true && obj_characterselect.characterselected == false)
{
    delete_optionselected = 0
    selectedoption = 2
    selectedcopy_to_file = false
    event_copy = false
    file1y = 128
    file2y = 128
    global.savefile_optionselected = false
    global.savefilechoosen = false
    scr_soundeffect(sfx_step)
}
if ((!instance_exists(cursori)) && global.savefilechoosen == false)
{
    with (instance_create(168, 96, obj_cursor))
    {
        other.cursori = id
        depth = -10
    }
}
if (instance_exists(cursori) && global.savefilechoosen == false)
{
    if (global.savefile_optionselected == false && global.savefile_fileselected == false)
        cursori.y = cursory[selectedfile]
    else
        cursori.y = 270
}
else if instance_exists(cursori)
    instance_destroy(cursori)
