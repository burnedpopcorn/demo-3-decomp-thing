if (ds_list_find_index(global.saveroom, id) == -1)
{
    repeat (4)
    {
        with (instance_create((x + 32), (y + 32), obj_secretdebris))
        {
            mode = 2
            blendsprite = spr_enemyblock
        }
    }
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
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}
