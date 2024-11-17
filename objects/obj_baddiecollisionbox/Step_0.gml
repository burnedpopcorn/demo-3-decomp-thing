if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (bulletbuffer > 0)
    bulletbuffer--
for (var i = 1; i <= 2; i++)
{
    var player = (i == 1 ? obj_player1 : obj_player2)
    var _grabbedby = i
    if (instance_exists(baddieID) && place_meeting(x, y, player) && player.cutscene == 0 && global.freezeframe == false)
    {
        if (baddieID.state != (109 << 0) && baddieID.state != (201 << 0) && baddieID.state != (200 << 0) && (!other.baddieID.invincible))
        {
            with (player)
            {
                if (instakillmove == 1 && other.baddieID.invtime <= 0)
                {
                    if (state == 91 && sprite_index != spr_mach3hit)
                    {
                        if (fightball == 0)
                            sprite_index = spr_mach3hit
                        image_index = 0
                    }
                    if (state == 70 && grounded)
                    {
                        machpunchAnim = 1
                        image_index = 0
                    }
                    if (state == (91 << 0) || (state == (71 << 0) && sprite_index == spr_mach3boost) || (state == (37 << 0) && movespeed >= 12) || (state == (74 << 0) && freefallsmash > 10) || state == (7 << 0) || state == (43 << 0) || (state == (3 << 0) && other.baddieID.hp <= 0) || state == (2 << 0) || state == (25 << 0) || state == (18 << 0) || state == (24 << 0))
                    {
                        other.baddieID.hp -= 99
                        other.baddieID.instakilled = 1
                    }
                    other.baddieID.invtime = 25
                    if (state != 73)
                        other.baddieID.grabbedby = _grabbedby
                    else
                        other.baddieID.grabbedby = (_grabbedby == 1 ? 2 : 1)
                    var angle = point_direction(other.baddieID.x, other.baddieID.y, (x + hsp), (y + vsp))
                    var ymovespeed = 2 + abs(vsp)
                    var vdirection = sign(round(hsp + xscale / 2))
                    other.baddieID.initialvsp = clamp(((-(lengthdir_y(ymovespeed, angle))) - 2), -25, random_range(-1, -15))
                    other.baddieID.initialhsp = vdirection * ((random_range(1, 7)) + (abs(floor(hsp * 1.2))))
                    scr_soundeffect(sfx_punch)
                    if (other.baddieID.hp <= 1 && grounded)
                        other.baddieID.dying = true
                    other.baddieID.scarebuffer = 0
                    scr_sleep()
                    other.baddieID.blowdirection = 6
                    other.baddieID.blowintensity = 1
                    other.baddieID.playerxscale = xscale
                    other.baddieID.state = (200 << 0)
                    if (other.baddieID.instakilled == 1 || (other.baddieID.dying == true && (grounded || scr_solid((x + sign(hsp)), y))))
                    {
                        instance_destroy(other.baddieID)
                        instance_destroy(other.id)
                    }
                    global.hit = global.hit + 1
                    global.combotime = 60
                    global.pausecombotime = true
                    obj_tv.alarm[1] = 75
                    if (other.baddieID.hp <= 1)
                    {
                        with (instance_create((other.x + (random_range(-16, 16))), (other.y + (random_range(-16, 16))), obj_balloonpop))
                        {
                            image_speed = 0.35
                            sprite_index = spr_bigpoofclouds
                            image_angle = choose(0, 90, 180, 270)
                        }
                    }
                    if ((!grounded) && state != 74 && state != (126 << 0) && key_jump2)
                    {
                        if (state == 70 || (state == 91 && fightball == 0))
                        {
                            if (character != "V")
                                sprite_index = spr_mach2jump
                            else
                                sprite_index = spr_playerV_spinjump1
                        }
                        suplexmove = 0
                        vsp = -11
                    }
                }
                if (state == 111)
                {
                    if (grounded && (!key_up) && (!key_down))
                    {
                        sprite_index = spr_player_bashblow1
                        other.baddieID.blowdirection = 1
                        other.baddieID.blowintensity = 1
                    }
                    else if (key_down && (!key_up))
                    {
                        sprite_index = spr_player_bashblow2
                        other.baddieID.blowdirection = 2
                        other.baddieID.blowintensity = 1
                    }
                    else if (move != xscale && move != 0 && (!key_down) && (!key_up))
                    {
                        sprite_index = spr_player_bashblow3
                        other.baddieID.blowdirection = 1
                        other.baddieID.blowintensity = 0.8
                    }
                    else if ((move == xscale || move == 0) && (!key_down) && (!key_up))
                    {
                        sprite_index = spr_player_bashblow4
                        other.baddieID.blowdirection = 1
                        other.baddieID.blowintensity = 1
                    }
                    else if (key_up && (!key_down))
                    {
                        sprite_index = spr_player_bashblow5
                        other.baddieID.blowdirection = 3
                        other.baddieID.blowintensity = 1
                    }
                    state = 113
                    scr_sleep()
                    image_index = 0
                    scr_soundeffect(sfx_killingblow)
                    scr_soundeffect(sfx_punch)
                    with (other.baddieID)
                    {
                        hp -= 1
                        scarebuffer = 0
                        shakebuffer = 2.5
                        shake = 1
                        playerxscale = other.xscale
                        grabbedby = _grabbedby
                        image_xscale = (-other.xscale)
                        if (stunned < 500)
                            stunned = 500
                        alarm[3] = 3
                        global.hit = global.hit + 1
                        alarm[1] = 5
                        state = 200
                        grav = 0
                        hsp = 0
                        vsp = 0
                        global.combotime = 60
                        global.pausecombotime = true
                        obj_tv.alarm[1] = 75
                        with (obj_camera)
                        {
                            shake_mag = 3
                            shake_mag_acc = 3 / room_speed
                        }
                    }
                }
                if (state == (129 << 0))
                {
                    if (sprite_index == spr_gustavo_dash)
                    {
                        image_index = 0
                        sprite_index = spr_gustavo_hauling
                        with (other.baddieID)
                        {
                            playerxscale = other.xscale
                            grabbedby = _grabbedby
                            image_xscale = (-other.xscale)
                            if (stunned < 500)
                                stunned = 500
                            alarm[3] = 3
                            global.hit = global.hit + 1
                            alarm[1] = 5
                            state = 200
                            grav = 0
                            hsp = 0
                            vsp = 0
                            global.combotime = 60
                            global.pausecombotime = true
                            obj_tv.alarm[1] = 75
                        }
                    }
                    if (sprite_index == spr_gustavo_shoot)
                    {
                        other.baddieID.blowdirection = 1
                        other.baddieID.blowintensity = 0.8
                        other.baddieID.state = (105 << 0)
                    }
                }
                if (sprite_index == spr_player_shoryumineken && vsp < 0 && other.baddieID.hp > 0 && (!other.baddieID.invincible))
                {
                    flash = 1
                    sprite_index = spr_player_shoryumineken
                    image_index = 4
                    if (vsp > -20)
                        vsp += -1
                    other.baddieID.blowdirection = 3
                    if (other.baddieID.hp <= 1)
                        other.baddieID.blowintensity = 1
                    else
                        other.baddieID.blowintensity = 0.8
                    scr_soundeffect(sfx_killingblow)
                    scr_soundeffect(sfx_punch)
                    with (other.baddieID)
                    {
                        hp -= 99
                        scarebuffer = 0
                        shakebuffer = 2.5
                        shake = 1
                        playerxscale = other.xscale
                        grabbedby = _grabbedby
                        image_xscale = (-other.xscale)
                        if (stunned < 500)
                            stunned = 500
                        alarm[3] = 3
                        global.hit = global.hit + 1
                        alarm[1] = 5
                        state = 200
                        grav = 0
                        hsp = 0
                        vsp = 0
                        global.combotime = 60
                        global.pausecombotime = true
                        obj_tv.alarm[1] = 75
                        with (obj_camera)
                        {
                            scr_sleep()
                            shake_mag = 3
                            shake_mag_acc = 3 / room_speed
                        }
                    }
                }
                else if (sprite_index == spr_player_shoryumineken && other.baddieID.vsp > 0 && other.baddieID.dying == true && vsp < 0)
                {
                    sprite_index = spr_player_shoryumineken
                    image_index = 4
                    other.baddieID.blowdirection = 3
                    if (other.baddieID.hp <= 1)
                        other.baddieID.blowintensity = 1
                    else
                        other.baddieID.blowintensity = 0.8
                    scr_soundeffect(sfx_killingblow)
                    scr_soundeffect(sfx_punch)
                    with (other.baddieID)
                    {
                        hp -= 1
                        scarebuffer = 0
                        shakebuffer = 2.5
                        shake = 1
                        playerxscale = other.xscale
                        grabbedby = _grabbedby
                        image_xscale = (-other.xscale)
                        if (stunned < 500)
                            stunned = 500
                        alarm[3] = 3
                        global.hit = global.hit + 1
                        alarm[1] = 5
                        state = 200
                        grav = 0
                        hsp = 0
                        vsp = 0
                        global.combotime = 60
                        global.pausecombotime = true
                        obj_tv.alarm[1] = 75
                        with (obj_camera)
                        {
                            scr_sleep()
                            shake_mag = 3
                            shake_mag_acc = 3 / room_speed
                        }
                    }
                }
                if (instance_exists(other.baddieID) && instakillmove == 0 && other.baddieID.state != "punch" && other.baddieID.dying == false && y < other.baddieID.y && attacking == 0 && sprite_index != spr_player_mach2jump && (state == 58 || state == 69 || state == 46) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep && (!other.baddieID.invincible))
                {
                    scr_soundeffect(sfx_stompenemy)
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                    image_index = 0
                    other.baddieID.state = 106
                    other.baddieID.squashed = true
                    other.baddieID.squashval = 0
                    if (other.baddieID.stunned < 100)
                        other.baddieID.stunned = 100
                    if key_jump2
                    {
                        instance_create(x, (y + 50), obj_stompeffect)
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -14
                        if (state != 46)
                            sprite_index = spr_stompprep
                    }
                    else
                    {
                        instance_create(x, (y + 50), obj_stompeffect)
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -9
                        if (state != 46)
                            sprite_index = spr_stompprep
                    }
                }
                if (instance_exists(other.baddieID) && instakillmove == 0 && other.baddieID.state != "punch" && other.baddieID.state != 97 && other.baddieID.vsp > 0 && state != 57 && state != 43 && state != 71 && state != 74 && state != 70 && state != 22)
                {
                    if (other.baddieID.state != 96 && other.baddieID.id != obj_shrimp && other.baddieID.dying == false)
                    {
                        if (state != 73 && state != 12 && other.baddieID.stuntouch <= 0)
                        {
                            other.baddieID.stuntouch = 50
                            scr_soundeffect(sfx_bumpwall)
                            if (state != 27 && state != 69 && state != 68 && state != 111)
                                movespeed = 0
                            if (other.baddieID.stunned < 100)
                                other.baddieID.stunned = 100
                            if (x != other.baddieID.x)
                                other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                            other.baddieID.vsp = -5
                            other.baddieID.hsp = (-other.baddieID.image_xscale) * 2
                            other.baddieID.state = 106
                            other.baddieID.image_index = 0
                        }
                    }
                }
                if (instance_exists(other.baddieID) && instakillmove == 0 && state == 22 && character != "S" && (!other.baddieID.invincible))
                {
                    if ((key_shoot || sprite_index == spr_shotgunsuplexdash) && shotgunAnim == 1)
                    {
                        state = 38
                        with (instance_create(x, y, obj_pistoleffect))
                            image_xscale = other.image_xscale
                        image_index = 0
                        sprite_index = spr_shotgunshoot
                        if (character == "P")
                        {
                            instance_create((x + image_xscale * 20), (y + 20), obj_shotgunbullet)
                            with (instance_create((x + image_xscale * 20), (y + 20), obj_shotgunbullet))
                                spdh = 4
                            with (instance_create((x + image_xscale * 20), (y + 20), obj_shotgunbullet))
                                spdh = -4
                        }
                        other.baddieID.grabbedby = _grabbedby
                        instance_destroy(other.baddieID)
                        instance_destroy(other.id)
                        global.hit = global.hit + 1
                        global.combotime = 60
                        global.pausecombotime = true
                        obj_tv.alarm[1] = 75
                    }
                    else
                    {
                        movespeed = 0
                        image_index = 0
                        sprite_index = spr_haulingstart
                        state = 46
                        other.baddieID.state = 109
                        other.baddieID.grabbedby = _grabbedby
                        if (other.baddieID == obj_pizzaball)
                            golf = 1
                        else
                            golf = 0
                    }
                }
            }
        }
    }
}
