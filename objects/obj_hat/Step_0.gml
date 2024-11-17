if (player.choosenhat == bg_hubroom1TILE)
    player.equippedhat = false
else
    player.equippedhat = true
sprite_index = choosenhat[player.choosenhat]
x = player.x
y = sprite_get_bbox_top(player.sprite_index) + player.y - 45
image_xscale = player.xscale
image_alpha = player.image_alpha
image_angle = player.image_angle
if (player.state == (23 << 0) || room == global.roomstart[global.newtitlescreen] || room == timesuproom || room == Scootertransition || room == rank_room)
    visible = false
else if (player.equippedhat == 1)
    visible = player.visible
else
    visible = false
