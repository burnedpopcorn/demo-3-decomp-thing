global.shellactivate = false
global.showcollisions = false
display_set_gui_size(960, 540)
surface_resize(application_surface, 960, 540)
global.fartcounter = 0
global.parallax_array = -4
global.parallax_arraynumber = 0
scr_default_parallax()
global.visual_temperature = (0 << 0)
global.smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.,'\"-:?1234567890|", 1, 0)
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
global.pointsfont = font_add_sprite_ext(spr_font_collect, "0123456789", 1, 0)
global.combofont = font_add_sprite_ext(spr_font_combo, "0123456789", 1, 0)
global.combofont2 = font_add_sprite_ext(spr_font_combo2, "1234567890", 1, 0)
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-", 1, 0)
global.timerfont = font_add_sprite_ext(spr_font_timer, "1234567890:", 1, 0)
global.scrolloffset = 0
ini_open("saveData.ini")
global.newtitlescreen = ini_read_real("Option", "newtitlescreen", false)
global.newsjumpcancel = ini_read_real("Option", "newsjumpcancel", false)
global.wallrunstyle = ini_read_real("Option", "wallrunstyle", 0)
global.collectstyle = ini_read_real("Option", "collectstyle", 0)
global.pitchshift = ini_read_real("Option", "pitchshift", 0)
global.escapecollect = ini_read_real("Option", "escapecollect", 0)
global.groundpoundstyle = ini_read_real("Option", "groundpoundstyle", 0)
global.divestyle = false
global.attackstyle = ini_read_real("Option", "attackstyle", 0)
global.destroyablecollect = false
global.ratmode = 0
global.combostyle = false
global.backdrop = 0
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
global.roomstart[0] = Realtitlescreen
global.roomstart[1] = New_Realtitlescreen
global.flushtextures = true
global.moppingframes = 0
global.prefetcharray[0] = 130
global.prefetcharray[1] = 97
global.prefetcharray[2] = 1670
global.prefetcharray[3] = 1159
while (global.flushtextures == true)
{
    draw_texture_flush()
    sprite_prefetch_multi(global.prefetcharray)
    global.flushtextures = false
    show_debug_message("Flushed Textures")
}
gml_release_mode(true)
