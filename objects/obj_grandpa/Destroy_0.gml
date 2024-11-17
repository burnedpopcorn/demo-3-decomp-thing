if (ds_list_find_index(global.saveroom, id) == -1)
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
        sprite_index = spr_grandpa_dead
        hsp = other.initialhsp
        vsp = other.initialvsp
    }
    ds_list_add(global.saveroom, id)
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
    {
        global.style += 7
        if (global.nocombo == false)
        {
            if (grabbedby == 1)
                obj_player1.collectscore += 10
            else if (grabbedby == 2)
                obj_player2.collectscore += 10
            else
                obj_player1.collectscore += 10
            with (instance_create(x, y, obj_smallnumber))
                number = "10"
        }
    }
    if (global.stylethreshold == 1)
    {
        global.style += 5
        if (global.nocombo == false)
        {
            if (grabbedby == 1)
                obj_player1.collectscore += 20
            else if (grabbedby == 2)
                obj_player2.collectscore += 20
            else
                obj_player1.collectscore += 20
            with (instance_create(x, y, obj_smallnumber))
                number = "20"
        }
    }
    if (global.stylethreshold == 2)
    {
        global.style += 4
        if (global.nocombo == false)
        {
            if (grabbedby == 1)
                obj_player1.collectscore += 40
            else if (grabbedby == 2)
                obj_player2.collectscore += 40
            else
                obj_player1.collectscore += 40
            with (instance_create(x, y, obj_smallnumber))
                number = "40"
        }
    }
    if (global.stylethreshold == 3)
    {
        global.style += 3
        if (global.nocombo == false)
        {
            if (grabbedby == 1)
                obj_player1.collectscore += 60
            else if (grabbedby == 2)
                obj_player2.collectscore += 60
            else
                obj_player1.collectscore += 60
            with (instance_create(x, y, obj_smallnumber))
                number = "60"
        }
    }
    if (global.stylethreshold >= 4)
    {
        global.style += 2
        if (global.nocombo == false)
        {
            if (grabbedby == 1)
                obj_player1.collectscore += 80
            else if (grabbedby == 2)
                obj_player2.collectscore += 80
            else
                obj_player1.collectscore += 80
            with (instance_create(x, y, obj_smallnumber))
                number = "80"
        }
    }
    global.combotime = 60
    global.pausecombotime = true
    obj_tv.alarm[1] = 75
}
else if (ds_list_find_index(global.saveroom, id) == -1)
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
        sprite_index = spr_grandpa_dead
        hsp = other.initialhsp
        vsp = other.initialvsp
    }
}
