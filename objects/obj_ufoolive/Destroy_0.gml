if (ds_list_find_index(global.baddieroom, id) == -1)
    instance_create(x, y, obj_safeexplosion)
event_inherited()
if (global.stylethreshold >= 4)
    instance_create(x, y, obj_ufoolive_grounded)
