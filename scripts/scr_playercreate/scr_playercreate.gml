function scr_playercreate() //gml_Script_scr_playercreate
{
    scale = 1
    secreteye = false
    actor = false
    jumpheight = -11
    in_water = false
    endcombo = false
    toomanytoppings = 0
    heatafterimage_id = -4
    substate = 0
    suplexdashtimer = 0
    global.storedtaminute = 0
    global.storedtasecond = 0
    breakdancebuffer = 50
    collectscore = 0
    storedscore = 0
    knightpoundbuffer = 0
    knightmaxy = 0
    knightroomy = 0
    knightslidespeed = 0
    tauntstoredstate = 0
    tauntstoredmovespeed = 6
    tauntstoredsprite = spr_null
    tauntstoredimage = 0
    taunttimer = 20
    playerdirection = 0
    maxmachspeed = 24
    swordhitboxid = -4
    firetrailbuffer = 100
    show_tricks = false
    tricksperformed = 0
    draw_angle = 0
    global.got_hurt = false
    global.comboended = false
    global.timeevent = 0
    pizzacoin = 0
    pizzacoinindicatorid = -4
    shieldindicatorid = noone
    if (!instance_exists(pizzacoinindicatorid))
    {
        with (instance_create(x, y, obj_pizzacoinindicator))
        {
            other.pizzacoinindicatorid = id
            player = other.id
        }
    }
    if (!instance_exists(shieldindicatorid))
    {
        with (instance_create(x, y, obj_shieldbackupindicator))
        {
            other.shieldindicatorid = id
            player = other.id
        }
    }
    murderammo = 0
    combothreshold = 0
    global.draw_peter = false
    global.deathmode = false
    uparrowid = -4
    supertauntbuffer = 0
    supertauntcharged = false
    supertaunteffect = -4
    pizzashield = false
    pizzashieldbackup = 0
    pizzashieldframes = 0
    vigitimer = 100
    mach3dash = false
    mach3dashbuffer = 0
    machrolljump = false
    global.freezeframe = false
    global.freezeframetimer = 200
    global.collect = 0
    global.collectN = 0
    pogojetcharge = false
    pogojetchargebuffer = 0
    flashing = false
    flashingtimer = 0
    jetpacking = false
    pogobounces = 0
    pogomovespeed = 0
    pogoed = true
    wallclingbuffer = 15
    grindeffect = -4
    initialfreefallvsp = 15
    initialsuperjumpvsp = -12
    bouncevsp = -6
    bouncehsp = 6
    surf_width = 2
    surf_height = 10
    surf_pallete = -1
    if (!surface_exists(surf_pallete))
        surf_pallete = surface_create(surf_width, surf_height)
    custompalette = false
    customupdate = true
    frozenstate = 0
    frozenspriteindex = 430
    frozenimageindex = 0
    frozenimagespeed = 0.35
    frozenmovespeed = 0
    frozengrav = 0.35
    frozensmash = 0
    frozenhsp = 0
    frozenvsp = 0
    frozenjumpbuffer = 0
    frozenalarm[0] = -1
    frozenalarm[1] = -1
    frozenalarm[2] = -1
    frozenalarm[3] = -1
    frozenalarm[4] = -1
    frozenalarm[5] = -1
    frozenalarm[6] = -1
    frozenalarm[7] = -1
    frozenalarm[8] = -1
    frozenalarm[9] = -1
    frozenalarm[10] = -1
    global.pausecombotime = false
    rocketup = 0
    if instance_exists(obj_pizzakinshroom)
        instance_destroy(obj_pizzakinshroom)
    if instance_exists(obj_pizzakincheese)
        instance_destroy(obj_pizzakincheese)
    if instance_exists(obj_pizzakintomato)
        instance_destroy(obj_pizzakintomato)
    if instance_exists(obj_pizzakinsausage)
        instance_destroy(obj_pizzakinsausage)
    if instance_exists(obj_pizzakinpineapple)
        instance_destroy(obj_pizzakinpineapple)
    if instance_exists(obj_noisebomb)
        instance_destroy(obj_noisebomb)
    if instance_exists(obj_gerome)
        instance_destroy(obj_gerome)
    if instance_exists(obj_peshino)
        instance_destroy(obj_peshino)
    ds_list_clear(global.toppinlist)
    ds_list_clear(global.follower)
    global.shroomfollow = false
    global.cheesefollow = false
    global.tomatofollow = false
    global.sausagefollow = false
    global.pineapplefollow = false
    global.noisebombfollow = false
    global.geromefollowing = false
    global.peshinofollowing = false
    global.geromeopen = false
    floatbuffer = false
    floattimer = 50
    spellselect = 1
    spellshowbuffer = 0
    spellcastedonce = false
    global.magic = 50
}

