function scr_playerreset() //scr_playerreset
{
    if instance_exists(obj_endlevelfade)
        instance_destroy(obj_endlevelfade)
    with (obj_discordrpc)
        alarm[0] = -1
    global.visual_temperature = (0 << 0)
    global.oldmeter = 0
    global.heatmeter = 0
    global.bonusmiliseconds = 0
    global.bonusseconds = 0
    global.bonusminutes = 0
    global.bonushour = 0
    global.deathmode = false
    global.bonustimer = false
    global.storedtaminute = 0
    global.storedtasecond = 0
    global.desertnight = false
    with (obj_goop)
        instance_destroy(id, false)
    with (obj_lighting)
    {
        darkness = 0
        targetdarkness = 0
    }
    scr_soundstopall()
    audio_stop_all()
    endspr = bg_hubroom1TILE
    scale = 0.5
    scorespd = 1
    storedscore = 0
    collecteffecttimer = 0
    activated = false
    visible = 0
    alarm[0] = -1
    with (obj_shieldbackupindicator)
    {
        oldshield = 0
        visible = false
        show = 0
        _visible = 1
    }
    global.style = 0
    global.stylethreshold = 0
    global.freezeframe = false
    global.switchblock = 0
    global.soundposoffset = 0
    global.scrolloffset = 0
    global.timeractive = 0
    global.wave = 0
    global.maxwave = 0
    global.golfbuffer = 0
    global.secretfound = 0
    global.hurtcounter = 0
    global.snickchallenge = 0
    if instance_exists(obj_snickexe)
        instance_destroy(obj_snickexe)
    obj_timeattack.stop = 0
    global.taseconds = 0
    global.taminutes = 0
    global.timeattack_value = 0
    global.timeattack_points = 0
    obj_player1.spotlight = 1
    obj_player2.x = -1000
    obj_player2.y = 500
    obj_player2.state = 8
    obj_camera.golf = 0
    obj_camera.greyscalefade = 0
    with (obj_camera)
    {
        global.startgate = -4
        alarm[3] = -1
        global.hitstunalarm = -1
        golf = 0
        greyscalefade = 0
        _image_index = 0
        _image_speed = 0
        newhudyoffset = 0
        shakemag = 0
        colors[0] = choose(0, 1, 2, 3)
    }
    if instance_exists(obj_coopflag)
        instance_destroy(obj_coopflag)
    ds_queue_clear(global.newhudmessage)
    global.miniboss = 0
    global.lapping = 0
    global.laptouched = 0
    global.christmasend = 0
    global.nocombo = 0
    global.storedgun = 0
    global.golfhit = 0
    with (obj_tv)
    {
        staticframe = 0
        drawstatic = false
        drawstatictimer = 0
        drawstaticalpha = 0
        frozenalarm = -1
        frozen = false
        bootingup = false
        alarm[1] = -1
        shownranks = 0
        shownranka = 0
        shownrankb = 0
        shownrankc = 0
        showntimeranks = 0
        showntimeranka = 0
        showntimerankb = 0
        showntimerankc = 0
        showntimerankd = 0
        imageindexstore = 0
        image_index = 0
        image_speed = 0
        alarm[0] = -1
        showtext = false
        tvsprite = spr_tvboot
        newtvsprite = spr_tv_open
        ds_queue_clear(global.newhudmessage)
        new_message = ""
        shownewtext = false
        showingnewtext = false
        textbubbleframes = 0
        text_x = 300
        idle = 0
        sprite_index = spr_tvboot
        xi = 500
        yi = 600
        newshake = false
        shake = false
        newtvspritestore = 0
    }
    global.SAGEshotgunsnicknumber = 0
    with (obj_music)
    {
        fadeoff = 0
        playintro = true
        nolag = 0
    }
    if instance_exists(obj_timesup)
        instance_destroy(obj_timesup)
    global.seconds = 59
    global.minutes = 1
    obj_player1.state = 61
    obj_player1.visible = true
    obj_player2.state = 61
    obj_player2.visible = true
    ds_list_clear(global.saveroom)
    ds_list_clear(global.baddieroom)
    ds_list_clear(global.gooproom)
    ds_list_clear(global.toppinlist)
    ds_list_clear(global.follower)
    global.ruinmusic = 0
    global.factorymusic = 0
    with (obj_player1)
    {
        scr_playercreate()
        state = (61 << 0)
        grounded = true
        grinding = false
        pipedirection = "none"
        targetDoor = "A"
        parry_id = -4
        parried_baddie = 0
        parry_max = 8
        superspringjump = 0
        verticaloffset = 0
        vertical = 0
        machhitAnimtimer = 500
        rollmove = 0
        golfgone = 0
        GshotgunAnim = 0
        Gbackupweapon = 0
        vigihealth = 100
        buttanim = 0
        firebutt = 0
        image_blend = make_colour_hsv(0, 0, 255)
        blackblend = 0
        heavy = 0
        image_index = 0
        sprite_index = spr_walkfront
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = -1
        alarm[4] = -1
        alarm[5] = -1
        alarm[6] = -1
        alarm[7] = -1
        alarm[8] = -1
        alarm[9] = -1
        alarm[10] = -1
        grav = 0.5
        hsp = 0
        vsp = 0
        global.playerhealth = 5
        xscale = 1
        yscale = 1
        backupweapon = 0
        shotgunAnim = 0
        box = 0
        steppy = 0
        movespeedmax = 5
        jumpstop = 0
        start_running = 1
        obj_camera.ded = 0
        visible = true
        global.panic = 0
        turn = 0
        jumpAnim = 1
        dashAnim = 1
        landAnim = 0
        machslideAnim = 0
        moveAnim = 1
        stopAnim = 1
        crouchslideAnim = 1
        crouchAnim = 1
        machhitAnim = 0
        stompAnim = 0
        inv_frames = 0
        turning = 0
        hurtbounce = 0
        hurted = 0
        autodash = 0
        mach2 = 0
        input_buffer_jump = 8
        input_buffer_secondjump = 8
        input_buffer_highjump = 8
        flash = 0
        global.key_inv = 0
        global.shroomfollow = 0
        global.cheesefollow = 0
        global.tomatofollow = 0
        global.sausagefollow = 0
        global.pineapplefollow = 0
        global.keyget = 0
        collectscore = 0
        collectscore = 0
        global.ammo = 0
        global.treasure = 0
        global.combo = 0
        global.combotime = 0
        global.pausecombotime = false
        pizzacoin = 0
        global.toppintotal = 1
        global.hit = 0
        ini_open("playerData_" + global.savefile + ".ini")
        global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
        global.SAGEshotgunsnicknumber = 0
        global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
        global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
        global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
        global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
        global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
        global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
        global.SAGEknighttaken = 0
        global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
        global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
        ini_close()
        in_water = false
        key_particles = 0
        barrel = 0
        bounce = 0
        a = 0
        idle = 0
        attacking = 0
        slamming = 0
        superslam = 0
        machpunchAnim = 0
        punch = 0
        machfreefall = 0
        shoot = 1
        instakillmove = 0
        windingAnim = 0
        facestompAnim = 0
        ladderbuffer = 0
        chainsaw = 50
        toomuchalarm1 = 0
        toomuchalarm2 = 0
        dashdust = 0
        throwforce = 0
        hurtsound = 0
        idleanim = 0
        momemtum = 0
        cutscene = 0
        grabbing = 0
        dir = xscale
        goingdownslope = 0
        goingupslope = 0
        fallinganimation = 0
        bombpeptimer = 100
        slapbuffer = 0
        slaphand = 1
        suplexmove = 0
        suplexhavetomash = 0
        timeuntilhpback = 300
        anger = 0
        angry = 0
        portal = 0
        tauntcooleffect = -4
        floatbuffer = false
        floattimer = 50
        spellselect = 1
        spellshowbuffer = 0
        global.magic = 50
    }
    with (obj_player2)
    {
        scr_playercreate()
        state = (61 << 0)
        portal = 0
        GshotgunAnim = 0
        Gbackupweapon = 0
        vigihealth = 100
        targetDoor = "A"
        buttanim = 0
        firebutt = 0
        image_blend = make_colour_hsv(0, 0, 255)
        blackblend = 0
        heavy = 0
        image_index = 0
        sprite_index = spr_walkfront
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = -1
        alarm[4] = -1
        alarm[5] = -1
        alarm[6] = -1
        alarm[7] = -1
        alarm[8] = -1
        alarm[9] = -1
        alarm[10] = -1
        grav = 0.5
        hsp = 0
        vsp = 0
        global.playerhealth = 5
        xscale = 1
        yscale = 1
        backupweapon = 0
        shotgunAnim = 0
        box = 0
        steppy = 0
        movespeedmax = 5
        jumpstop = 0
        start_running = 1
        obj_camera.ded = 0
        visible = true
        global.panic = 0
        turn = 0
        jumpAnim = 1
        dashAnim = 1
        landAnim = 0
        machslideAnim = 0
        moveAnim = 1
        stopAnim = 1
        crouchslideAnim = 1
        crouchAnim = 1
        machhitAnim = 0
        stompAnim = 0
        inv_frames = 0
        turning = 0
        hurtbounce = 0
        hurted = 0
        autodash = 0
        mach2 = 0
        input_buffer_jump = 8
        input_buffer_secondjump = 8
        input_buffer_highjump = 8
        flash = 0
        global.key_inv = 0
        global.shroomfollow = 0
        global.cheesefollow = 0
        global.tomatofollow = 0
        global.sausagefollow = 0
        global.pineapplefollow = 0
        global.keyget = 0
        collectscore = 0
        collectscore = 0
        global.ammo = 0
        global.treasure = 0
        global.combo = 0
        global.combotime = 0
        pizzacoin = 0
        global.toppintotal = 1
        global.hit = 0
        ini_open("playerData_" + global.savefile + ".ini")
        global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
        global.SAGEshotgunsnicknumber = 0
        global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
        global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
        global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
        global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
        global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
        global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
        global.SAGEknighttaken = 0
        global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
        global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
        ini_close()
        in_water = false
        key_particles = 0
        barrel = 0
        bounce = 0
        a = 0
        idle = 0
        attacking = 0
        slamming = 0
        superslam = 0
        machpunchAnim = 0
        punch = 0
        machfreefall = 0
        shoot = 1
        instakillmove = 0
        windingAnim = 0
        facestompAnim = 0
        ladderbuffer = 0
        chainsaw = 50
        toomuchalarm1 = 0
        toomuchalarm2 = 0
        dashdust = 0
        throwforce = 0
        hurtsound = 0
        idleanim = 0
        momemtum = 0
        cutscene = 0
        grabbing = 0
        dir = xscale
        goingdownslope = 0
        goingupslope = 0
        fallinganimation = 0
        bombpeptimer = 100
        slapbuffer = 0
        slaphand = 1
        suplexmove = 0
        suplexhavetomash = 0
        timeuntilhpback = 300
        anger = 0
        golfgone = 0
        angry = 0
        rollmove = 0
        machhitAnimtimer = 500
        verticaloffset = 0
        vertical = 0
        superspringjump = 0
        parry_id = -4
        parried_baddie = 0
        parry_max = 8
        pipedirection = "none"
        grounded = true
        grinding = false
    }
}

