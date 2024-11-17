if instance_exists(obj_palettechanger)
    image_index = 1
else if (!((place_meeting(x, y, _player) && _player.state == (61 << 0))))
    image_index = 0
