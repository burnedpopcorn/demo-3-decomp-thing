var player = obj_player1
if (global.coop == true)
    player = (obj_player1.spotlight == false ? obj_player2 : obj_player1)
if (sprite_index == spr_present)
{
    if (player.character == "N" && player.pogo == false)
    {
        spr_palette = spr_orangepalette
        paletteselect = 1
    }
    else if (player.character == "N" && player.pogo == true)
    {
        spr_palette = spr_noisepalette
        paletteselect = 0
    }
}
switch global.boxhp
{
    case 20:
        getoutspd = 130
        outtimespd = 130
        getoutspd = 130
        outtimespd = 130
        getoutspd = 130
        outtimespd = 130
        getoutspd = 100
        outtimespd = 100
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 19:
        getoutspd = 130
        outtimespd = 130
        getoutspd = 130
        outtimespd = 130
        getoutspd = 100
        outtimespd = 100
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 18:
        getoutspd = 130
        outtimespd = 130
        getoutspd = 100
        outtimespd = 100
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 17:
        getoutspd = 100
        outtimespd = 100
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 16:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 15:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 14:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 13:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 12:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 11:
        getoutspd = 80
        outtimespd = 80
        getoutspd = 80
        outtimespd = 80
        break
    case 10:
        getoutspd = 80
        outtimespd = 80
        break
    case 9:
        getoutspd = 80
        outtimespd = 80
        break
    case 8:
        getoutspd = 80
        outtimespd = 80
        break
    case 7:
        getoutspd = 80
        outtimespd = 80
        break
    case 6:
        getoutspd = 80
        outtimespd = 80
        break
    case 5:
        getoutspd = 80
        outtimespd = 80
        break
    case 4:
        getoutspd = 80
        outtimespd = 80
        break
    case 3:
        getoutspd = 80
        outtimespd = 80
        break
    case 2:
        getoutspd = 80
        outtimespd = 80
        break
    case 1:
        getoutspd = 5
        outtimespd = 5
        break
    case 0:
        instance_destroy(obj_presentbox)
        break
}

player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
if (global.coop == false)
    player = obj_player1
if ((player.instakillmove == true || player.state == 22 || player.state == (111 << 0) || player.state == (114 << 0)) && player.state != (60 << 0) && place_meeting(x, y, player) && sprite_index != spr_present && player.state != (119 << 0))
{
    with (player)
    {
        if (state == 22 || state == (111 << 0) || state == (70 << 0) || state == (91 << 0) || state == (117 << 0))
        {
            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
            suplexdashtimer = 7
            image_index = 0
            state = (57 << 0)
            substate = 1
            movespeed = 5
            vsp = -3
        }
    }
    if (character == 0)
    {
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        with (obj_tv)
        {
            newshake = true
            alarm[2] = 20
        }
        global.boxhp = global.boxhp - 1
        scr_soundeffect(sfx_killenemy)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        ds_list_shuffle(global.boxlist)
        with (obj_presentbox)
        {
            getout = getoutspd
            outtime = outtimespd
            sprite_index = spr_present
        }
    }
    else
    {
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        scr_soundeffect(sfx_killenemy)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        sprite_index = spr_present
    }
    with (instance_create(x, y, obj_baddie_dead))
    {
        sprite_index = other.deadspr
        if (other.character == 0)
        {
            spr_palette = other.spr_palette
            paletteselect = other.paletteselect
        }
    }
}
if (place_meeting(x, y, obj_baddie) && obj_baddie.thrown == 1 && sprite_index != spr_present)
{
    if (character == 0)
    {
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        with (obj_tv)
        {
            newshake = true
            alarm[2] = 20
        }
        with (obj_tv)
        {
            newshake = true
            alarm[2] = 20
        }
        global.boxhp = global.boxhp - 1
        scr_soundeffect(sfx_killenemy)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        ds_list_shuffle(global.boxlist)
        with (obj_presentbox)
        {
            getout = getoutspd
            outtime = outtimespd
            sprite_index = spr_present
        }
    }
    else
    {
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        scr_soundeffect(sfx_killenemy)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        instance_create(x, y, obj_baddiegibs)
        sprite_index = spr_present
    }
    with (instance_create(x, y, obj_baddie_dead))
    {
        sprite_index = other.deadspr
        if (other.character == 0)
        {
            spr_palette = other.spr_palette
            paletteselect = other.paletteselect
        }
    }
}
switch character
{
    case 0:
        upspr = spr_noisepresentup
        spr = spr_noisepresent
        downspr = spr_noisepresentdown
        deadspr = spr_playerN_hurt
        break
    case 1:
        upspr = spr_gustavopresentup
        spr = spr_gustavopresent
        downspr = spr_gustavopresentdown
        deadspr = spr_gustavopresentdead
        break
    case 2:
        upspr = spr_snickpresentup
        spr = spr_snickpresent
        downspr = spr_snickpresentdown
        deadspr = spr_snickpresentdead
        break
    case 3:
        upspr = spr_slimepresentup
        spr = spr_slimepresent
        downspr = spr_slimepresentdown
        deadspr = spr_slimepresentdead
        break
    case 4:
        upspr = spr_stickpresentup
        spr = spr_stickpresent
        downspr = spr_stickpresentdown
        deadspr = spr_stickpresentdead
        break
}

if (sprite_index == spr_present)
{
    getout -= 1
    collisionbuffer = 0
}
if (getout == 0 && sprite_index == spr_present && (character == 0 || global.boxhp < 14 || (global.boxhp < 18 && character == 1) || (global.boxhp < 17 && character == 2) || (global.boxhp < 16 && character == 3) || (global.boxhp < 15 && character == 4)))
{
    image_index = 0
    sprite_index = upspr
}
if (floor(image_index) >= (image_number - 1) && sprite_index == upspr)
{
    if (character == 0 && global.boxhp < 3 && global.boxhp != 1)
    {
        with (instance_create(x, y, obj_pizzagoblinbomb))
        {
            var a = 1
            if (x != player.x)
                a = (-(sign(x - player.x)))
            movespeed = 10
            image_xscale = a
            vsp = -8
            countdown = 60
        }
    }
    sprite_index = spr
}
if (sprite_index == spr)
    outtime -= 1
if (outtime == 0 && sprite_index == spr)
{
    image_index = 0
    sprite_index = downspr
}
if (sprite_index == downspr && floor(image_index) == (image_number - 1))
{
    ds_list_shuffle(global.boxlist)
    with (obj_presentbox)
    {
        getout = getoutspd
        outtime = outtimespd
        sprite_index = spr_present
    }
}
if ((!instance_exists(obj_baddiespawner)) && global.boxhp == 10)
{
    with (instance_create(480, 288, obj_baddiespawner))
    {
        content = obj_noisey
        repeat (6)
            instance_create((x + (random_range(-25, 25))), (y + (random_range(-25, 25))), obj_cloudeffect)
    }
}
if (box == 1)
    character = ds_list_find_index(global.boxlist, "box1")
if (box == 2)
    character = ds_list_find_index(global.boxlist, "box2")
if (box == 3)
    character = ds_list_find_index(global.boxlist, "box3")
if (box == 4)
    character = ds_list_find_index(global.boxlist, "box4")
if (box == 5)
    character = ds_list_find_index(global.boxlist, "box5")
