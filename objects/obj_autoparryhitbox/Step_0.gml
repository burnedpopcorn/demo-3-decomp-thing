image_xscale = playerid.xscale
if (playerid.state != (91 << 0) && playerid.state != (117 << 0))
    instance_destroy()
x = playerid.x
y = playerid.y
if (playerid.character != "S")
    sprite_index = spr_player_mask
else
    sprite_index = spr_crouchmask
