event_inherited()
image_speed = 0.35
global.collectsound = 0
depth = 4
if (global.escapecollect == 0)
    sprite_index = choose(spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_bananacollect, spr_shrimpcollect)
else if (global.escapecollect == 1)
    sprite_index = spr_escapecollectNEW
