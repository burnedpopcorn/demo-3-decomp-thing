if (ds_list_find_index(global.saveroom, id) == -1)
{
    var lay_id = layer_get_id(tiles)
    var map_id = layer_tilemap_get_id_fixed(lay_id)
    var set_id = tilemap_get_tileset(map_id)
    var data = tilemap_get_at_pixel(map_id, x, y)
    var data2 = tilemap_get_at_pixel(map_id, (x + 33), y)
    var data3 = tilemap_get_at_pixel(map_id, x, (y + 33))
    var data4 = tilemap_get_at_pixel(map_id, (x + 33), (y + 33))
    repeat (2)
        instance_create((x + 32), (y + 32), obj_metaldebris)
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
        tile_dataid = other.datas
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        tile_dataid = other.data2s
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        tile_dataid = other.data3s
        tile_dataset = other.set_ids
    }
    with (instance_create((x + 32), (y + 32), obj_secretdebris))
    {
        tile_dataid = other.data4s
        tile_dataset = other.set_ids
    }
    tile_layer_delete_at(1, x, y)
    tile_layer_delete_at(1, (x + 32), y)
    tile_layer_delete_at(1, (x + 32), (y + 32))
    tile_layer_delete_at(1, x, (y + 32))
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = 40 / room_speed
    }
    scr_soundeffect(sfx_breakmetal)
    ds_list_add(global.saveroom, id)
    data = tile_set_empty(data)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    tilemap_set_at_pixel(map_id, data, x, y)
    tilemap_set_at_pixel(map_id, data2, (x + 33), y)
    tilemap_set_at_pixel(map_id, data3, x, (y + 33))
    tilemap_set_at_pixel(map_id, data4, (x + 33), (y + 33))
}
depth = 1
