global.timeattack = 0
global.levelname = "none"
global.fakepeppino = 0
while (global.flushtextures == true)
{
    draw_texture_flush()
    sprite_prefetch_multi(global.prefetcharray)
    global.flushtextures = false
    show_debug_message("Flushed Textures")
}
script_execute(gml_Script_scr_playerreset)
var _backtohubroom = hub_room1
with (obj_player1)
{
    targetDoor = "start"
    _backtohubroom = backtohubroom
}
with (obj_player2)
    targetDoor = "start"
room_goto(_backtohubroom)
