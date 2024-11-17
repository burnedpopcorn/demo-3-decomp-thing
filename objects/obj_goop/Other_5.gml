var _collision = -4
var _tilecollision = false
if layer_exists("Tiles_Solid")
    _tilecollision = tile_meeting_line(x, y, x, (y + room_height), "Tiles_Solid")
_collision = collision_line(x, y, x, (y + room_height), group_collision, false, true)
if (_collision != -4 || _tilecollision != false)
{
    while ((!grounded) && (_collision != -4 || _tilecollision != false))
    {
        hsp = 0
        vsp = 10
        scr_collide()
        if layer_exists("Tiles_Solid")
            _tilecollision = tile_meeting_line(x, y, x, (y + room_height), "Tiles_Solid")
        _collision = collision_line(x, y, x, (y + room_height), group_collision, false, true)
    }
}
else if (!grounded)
    y = room_height + 32
hsp = 0
vsp = 0
var _sprite = sprite_index
if (_sprite != spr_goop_1 && _sprite != spr_goop_2 && _sprite != spr_goop_3 && _sprite != spr_goop_4 && _sprite != spr_goop_5)
{
    _sprite = choose(spr_goop_1, spr_goop_2, spr_goop_3, spr_goop_4, spr_goop_5)
    image_index = 0
}
sprite = _sprite
image = image_index
roomx = x
roomy = y
maxspeed = 0
if (created == false)
    ds_list_add(global.gooproom, [pooid, room, x, y, sprite, image, paletteselect])
