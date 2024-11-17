if (ds_list_find_index(global.saveroom, id) == -1)
{
    var lay_id = layer_get_id(tiles)
    var map_id = layer_tilemap_get_id_fixed(lay_id)
    var set_id = tilemap_get_tileset(map_id)
    var data = tilemap_get_at_pixel(map_id, x, y)
    var data2 = tilemap_get_at_pixel(map_id, (x + 33), y)
    var data3 = tilemap_get_at_pixel(map_id, x, (y + 33))
    var data4 = tilemap_get_at_pixel(map_id, (x + 33), (y + 33))
    var player = obj_player1
    if (global.coop == true)
        player = instance_nearest(x, y, obj_player)
    repeat (3)
    {
        with (instance_create((x + 32 + (random_range(-32, 32))), (y + 32 + (random_range(-32, 32))), obj_balloonpop))
        {
            image_speed = 0.35
            sprite_index = spr_destroyablecloud
            image_angle = choose(0, 90, 180, 270)
            vspeed = -3
        }
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        initialhsp = player.hsp / 1.7
        initialvsp = clamp((player.vsp / 1.3), -12, random_range(0, -5))
        tile_dataid = other.datas
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        initialhsp = player.hsp / 1.7
        initialvsp = clamp((player.vsp / 1.3), -12, random_range(0, -5))
        tile_dataid = other.data2s
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        initialhsp = player.hsp / 1.7
        initialvsp = clamp((player.vsp / 1.3), -12, random_range(0, -5))
        tile_dataid = other.data3s
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        initialhsp = player.hsp / 1.7
        initialvsp = clamp((player.vsp / 1.3), -12, random_range(0, -5))
        tile_dataid = other.data4s
        tile_dataset = other.set_ids
    }
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
    data = tile_set_empty(data)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    tilemap_set_at_pixel(map_id, data, x, y)
    tilemap_set_at_pixel(map_id, data2, (x + 33), y)
    tilemap_set_at_pixel(map_id, data3, x, (y + 33))
    tilemap_set_at_pixel(map_id, data4, (x + 33), (y + 33))
    var pizzacoin = random_range(1, 100)
    if (pizzacoin >= 85)
    {
        with (instance_create(x, y, obj_pizzacoin))
        {
            _dir = choose(1, -1)
            hsp = 2
        }
    }
}
