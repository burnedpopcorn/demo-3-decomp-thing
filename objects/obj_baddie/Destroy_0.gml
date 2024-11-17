if (ds_list_find_index(global.baddieroom, id) == -1 && important == 0)
{
    var i = random_range(0, 100)
    if (i >= 95)
        scr_soundeffect(sfx_scream1, sfx_scream2, sfx_scream3, sfx_scream4, 52, 53, 54, 55, 56, 57, 58)
    scr_soundeffect(sfx_killenemy)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (instance_create(x, y, obj_goop))
    {
        vsp = random_range(-2, -8)
        hsp = random_range(2, 6)
        _direction = sign(hsp)
        movespeed = abs(hsp)
    }
    with (instance_create(x, y, obj_goop))
    {
        vsp = random_range(-2, -8)
        hsp = random_range(-2, -6)
        _direction = sign(hsp)
        movespeed = abs(hsp)
    }
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = 3 / room_speed
    }
    with (instance_create(x, y, obj_baddie_dead))
    {
        canrotate = true
        image_xscale = other.image_xscale
        sprite_index = other.spr_dead
        hsp = other.initialhsp
        vsp = other.initialvsp
        paletteselect = other.paletteselect
        spr_palette = other.spr_palette
    }
    ds_list_add(global.baddieroom, id)
    if (creatorid != noone)
    {
        with (creatorid)
            ds_list_add(global.baddieroom, id)
    }
    if (global.newhud == false)
        obj_tv.image_index = random_range(0, 4)
    global.combo = global.combo + 1
    if (grabbedby == 1)
        obj_player1.combothreshold += 1
    else if (grabbedby == 2)
        obj_player2.combothreshold += 1
    else
        obj_player1.combothreshold += 1
    if (global.stylethreshold <= 0)
        global.style += 7
    else if (global.stylethreshold == 1)
        global.style += 5
    else if (global.stylethreshold == 2)
        global.style += 4
    else if (global.stylethreshold == 3)
        global.style += 3
    else if (global.stylethreshold >= 4)
        global.style += 2
    if (global.nocombo == false)
    {
        var _player = focused_player()
        var points_added = 5 + (global.combo - 1) * 5
        if (grabbedby == 1)
            obj_player1.storedscore += points_added
        else if (grabbedby == 2)
            obj_player2.storedscore += points_added
        else
            _player.storedscore += points_added
        with (instance_create(x, y, obj_smallnumber))
            number = string(points_added)
    }
    global.combotime = 60
    global.pausecombotime = true
    obj_tv.alarm[1] = 75
}
else if (ds_list_find_index(global.baddieroom, id) == -1 && important == 1)
{
    scr_soundeffect(sfx_killenemy)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = 3 / room_speed
    }
    with (instance_create(x, y, obj_baddie_dead))
    {
        canrotate = true
        image_xscale = other.image_xscale
        sprite_index = other.spr_dead
        hsp = other.initialhsp
        vsp = other.initialvsp
        paletteselect = other.paletteselect
        spr_palette = other.spr_palette
    }
}
if (dropcoin == 1)
{
    with (instance_create(x, y, obj_pizzacoin))
    {
        _dir = choose(1, -1)
        hsp = 2
    }
}
