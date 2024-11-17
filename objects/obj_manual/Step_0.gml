if (obj_player.key_right2 && i < (sprite_get_number(spr_manual) - 1))
{
    i += 1
    scr_soundeffect(sfx_step)
}
if ((-obj_player.key_left2) && i > 0)
{
    i -= 1
    scr_soundeffect(sfx_step)
}
if (obj_player.key_slap2 || keyboard_check_pressed(vk_f5) || obj_player.key_start)
{
    instance_destroy()
    if (room == New_Realtitlescreen)
    {
        obj_player1.state = (0 << 0)
        if (global.coop == true)
            obj_player2.state = (0 << 0)
        obj_newmainmenuselect.selected = 0
    }
    else if (room == Realtitlescreen)
        obj_mainmenuselect.selected = 0
}
if (i >= (sprite_get_number(spr_manual) - 1))
{
    var height = string_height(credits_text) - 5
    var scroll = mouse_wheel_down() - mouse_wheel_up()
    draw_set_font(global.smallfont)
    draw_set_halign(fa_center)
    if (scroll != 0)
    {
        autoscroll = false
        alarm[0] = 40
    }
    credits_y += (10 * scroll)
    if (autoscroll == true)
        credits_y -= 0.75
    var maximum = surface_height + 5
    var minimum = (-height)
    credits_y = wrap(credits_y, minimum, maximum)
}
else
    credits_y = surface_height + 5
