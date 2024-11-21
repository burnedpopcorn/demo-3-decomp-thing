function scr_playerstep() //scr_playerstep
{
    if (actor == false)
    {
        switch state
        {
            case 0:
                scr_player_normal()
                break
            case (127 << 0):
                scr_player_startgate()
                break
            case (126 << 0):
                scr_player_newbomb()
                break
            case (122 << 0):
                scr_player_frozen()
                break
            case (125 << 0):
                scr_player_trick()
                break
            case 109:
                scr_player_grabbed()
                break
            case (123 << 0):
                scr_player_changing()
                break
            case (124 << 0):
                scr_player_murder()
                break
            case (116 << 0):
                scr_player_pipe()
                break
            case (117 << 0):
                scr_player_jetpack()
                break
            case (118 << 0):
                scr_player_Sjumpjetpackprep()
                break
            case (119 << 0):
                scr_player_pogo()
                break
            case (120 << 0):
                scr_player_wallcling()
                break
            case (121 << 0):
                scr_player_breakdance()
                break
            case (128 << 0):
                scr_player_rocket()
                break
            case (129 << 0):
                scr_player_ratmount()
                break
            case 110:
                scr_player_throwdynamite()
                break
            case 111:
                scr_player_kingknightroll()
                break
            case 112:
                scr_player_golf()
                break
            case 113:
                scr_player_bashhit()
                break
            case 114:
                scr_player_parry()
                break
            case 3:
                scr_player_finishingblow()
                break
            case 2:
                scr_player_tumble()
                break
            case 8:
                scr_player_titlescreen()
                break
            case 4:
                scr_player_ejected()
                break
            case 7:
                scr_player_firemouth()
                break
            case 6:
                scr_player_fireass()
                break
            case 5:
                scr_player_transitioncutscene()
                break
            case 9:
                scr_playerN_hookshot()
                break
            case 12:
                scr_player_slap()
                break
            case 10:
                scr_player_tacklecharge()
                break
            case 13:
                scr_player_cheesepep()
                break
            case 11:
                scr_player_cheeseball()
                break
            case 14:
                scr_player_cheesepepstick()
                break
            case 15:
                scr_player_boxxedpep()
                break
            case 16:
                scr_player_pistolaim()
                break
            case 17:
                scr_player_climbwall()
                break
            case 18:
                scr_player_knightpepslopes()
                break
            case 19:
                scr_player_portal()
                break
            case 20:
                scr_player_secondjump()
                break
            case 21:
                scr_player_chainsawbump()
                break
            case 22:
                scr_player_handstandjump()
                break
            case 23:
                scr_player_gottreasure()
                break
            case 24:
                scr_player_knightpep()
                break
            case 25:
                scr_player_knightpepattack()
                break
            case 26:
                scr_player_meteorpep()
                break
            case 27:
                scr_player_bombpep()
                break
            case 28:
                scr_player_grabbing()
                break
            case 29:
                scr_player_chainsawpogo()
                break
            case 30:
                scr_player_shotgunjump()
                break
            case 31:
                scr_player_stunned()
                break
            case 32:
                scr_player_highjump()
                break
            case 33:
                scr_player_chainsaw()
                break
            case 34:
                scr_player_facestomp()
                break
            case 36:
                scr_player_timesup()
                break
            case 37:
                scr_player_machroll()
                break
            case 39:
                scr_player_pistol()
                break
            case 38:
                scr_player_shotgun()
                break
            case 40:
                scr_player_machfreefall()
                break
            case 41:
                scr_player_throw()
                break
            case 43:
                scr_player_superslam()
                break
            case 42:
                scr_player_slam()
                break
            case 44:
                scr_player_skateboard()
                break
            case 45:
                scr_player_grind()
                break
            case 46:
                scr_player_grab()
                break
            case 47:
                scr_player_punch()
                break
            case 48:
                scr_player_backkick()
                break
            case 49:
                scr_player_uppunch()
                break
            case 50:
                scr_player_shoulder()
                break
            case 51:
                scr_player_backbreaker()
                break
            case 52:
                scr_player_bossdefeat()
                break
            case 54:
                scr_player_bossintro()
                break
            case 62:
                scr_player_smirk()
                break
            case 53:
                scr_player_pizzathrow()
                break
            case 55:
                scr_player_gameover()
                break
            case 93:
                scr_player_Sjumpland()
                break
            case 92:
                scr_player_freefallprep()
                break
            case 90:
                scr_player_runonball()
                break
            case 88:
                scr_player_boulder()
                break
            case 56:
                scr_player_keyget()
                break
            case 57:
                scr_player_tackle()
                break
            case 60:
                scr_player_slipnslide()
                break
            case 59:
                scr_player_ladder()
                break
            case 58:
                scr_player_jump()
                break
            case 64:
                scr_player_victory()
                break
            case 61:
                scr_player_comingoutdoor()
                break
            case 63:
                scr_player_Sjump()
                break
            case 65:
                scr_player_Sjumpprep()
                break
            case 66:
                scr_player_crouch()
                break
            case 67:
                scr_player_crouchjump()
                break
            case 68:
                scr_player_crouchslide()
                break
            case 69:
                scr_player_mach1()
                break
            case 70:
                scr_player_mach2()
                break
            case 91:
                scr_player_mach3()
                break
            case 71:
                scr_player_machslide()
                break
            case 72:
                scr_player_bump()
                break
            case 73:
                scr_player_hurt()
                break
            case 74:
                scr_player_freefall()
                break
            case 77:
                scr_player_freefallland()
                break
            case 75:
                scr_player_hang()
                break
            case 78:
                scr_player_door()
                break
            case 84:
                scr_player_barrelnormal()
                break
            case 83:
                scr_player_barrelfall()
                break
            case 82:
                scr_player_barrelmach1()
                break
            case 81:
                scr_player_barrelmach2()
                break
            case 80:
                scr_player_barrelfloat()
                break
            case 79:
                scr_player_barrelcrouch()
                break
            case 85:
                scr_player_barrelslipnslide()
                break
            case 86:
                scr_player_barrelroll()
                break
            case 87:
                scr_player_current()
                break
            case 89:
                scr_player_taxi()
                break
        }

    }
    else if (actor == true)
        scr_player_actor()
    in_water = (instance_exists(obj_water) && obj_water.bbox_top < y)
    if (in_water == true)
    {
        if (chance(0.99) == false)
        {
            with (instance_create(x, y, obj_waterbubble))
                depth = other.depth - 5
        }
    }
    if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || place_meeting(x, y, obj_olddresser) || place_meeting(x, y, obj_optionsdoor) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_door2) || place_meeting(x, y, obj_geromedoor) || place_meeting(x, y, obj_hatstand) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && (global.panic == 1 || global.snickchallenge == true))) && (!instance_exists(uparrowid)) && scr_solid(x, (y + 1)) && state == 0 && obj_player1.spotlight == 1)
    {
        with (instance_create(x, y, obj_uparrow))
        {
            other.uparrowid = id
            playerid = other.object_index
        }
    }
    if (global.freezeframe == false && actor == false && sprite_index != spr_knightpepdownslope && grounded && vsp >= 0 && (!((state == (17 << 0) || state == (117 << 0) || state == (2 << 0) || state == (120 << 0) || state == (71 << 0) || state == (119 << 0) || state == (10 << 0) || state == (46 << 0) || state == (77 << 0) || state == (38 << 0) || state == (3 << 0)))))
    {
        if (abs(hsp) >= 8)
        {
            var targetangle = scr_slopeangle()
            var RotationStep = (abs(hsp) / 16 + abs(hsp) / 32 - 2) * -1
        }
        else
        {
            targetangle = 360
            RotationStep = (abs(hsp) / 16 - 2) * -1
        }
        draw_angle = darctan2((dsin(targetangle) + dsin(draw_angle) * RotationStep), (dcos(targetangle) + dcos(draw_angle) * RotationStep))
    }
    else if (global.freezeframe == false)
    {
        if (draw_angle <= 0)
            draw_angle += 360
        if (draw_angle < 180)
            draw_angle = max((draw_angle - 2.8125), 0)
        else
            draw_angle = min((draw_angle + 2.8125), 360)
        if (state == (120 << 0) || state == (17 << 0))
            draw_angle = 0
    }
    if (grounded && state != (70 << 0) && state != (122 << 0) && state != (51 << 0) && state != (125 << 0) && state != (91 << 0) && state != (117 << 0) && state != (37 << 0))
        maxmachspeed = approach(maxmachspeed, 24, 1)
    if (firetrailbuffer > 0 && global.freezeframe == false)
        firetrailbuffer -= (movespeed / 24 * 26)
    if (firetrailbuffer <= 0)
    {
        if (movespeed >= 12 && (state == (70 << 0) || state == (91 << 0) || state == (117 << 0) || state == (125 << 0) || state == (37 << 0)))
        {
            with (instance_create(x, y, obj_superdashcloud))
            {
                image_speed = 0.35
                image_xscale = other.xscale
                if (place_meeting(other.x, (other.y + 1), obj_boilingwater) && (!(place_meeting(other.x, other.y, obj_boilingwater))))
                    sprite_index = spr_watersplashsmall
                else if (place_meeting(other.x, (other.y + 1), obj_water) && (!(place_meeting(other.x, other.y, obj_water))))
                    sprite_index = spr_cheesesplashsmall
                else
                    sprite_index = spr_flamecloud
            }
        }
        firetrailbuffer = 100
    }
    if (combothreshold >= 10)
    {
        murderammo = clamp((murderammo + 1), 0, 4)
        combothreshold = 0
    }
    if (global.combotime <= 0)
        combothreshold = 0
    if (global.freezeframe == false && (state == 23 || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == 56 || state == 78 || state == 4 || state == (127 << 0) || state == 64 || state == 61 || state == 55))
        cutscene = 1
    else if (global.freezeframe == false)
        cutscene = 0
    if (surface_exists(surf_pallete) && paletteselect >= (sprite_get_width(spr_palette) - 1))
        custompalette = true
    else if (paletteselect < (sprite_get_width(spr_palette) - 1))
        custompalette = false
    if (vigihealth > 100 && vigitimer <= 0 && global.freezeframe == false)
    {
        vigitimer = 100
        vigihealth -= 5
    }
    else if (vigihealth <= 100)
        vigitimer = 100
    if (global.freezeframe == false)
        vigitimer--
    vigihealth = clamp(vigihealth, 0, 250)
    if ((!scr_solid()) && (!scr_slope()))
    {
        if (state != 72 && state != (118 << 0) && state != 86 && sprite_index != spr_breakdanceattack1 && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 2 && state != 6 && state != 66 && state != 15 && state != 39 && sprite_index != spr_player_crouchshoot && state != 65 && state != 33 && state != 37 && state != 73 && state != 68 && state != 67)
            mask_index = spr_player_mask
        else
            mask_index = spr_crouchmask
    }
    else if scr_solid()
        mask_index = spr_crouchmask
    if (character == "S" && state == 27)
        mask_index = spr_player_mask
    else if (character == "S")
        mask_index = spr_crouchmask
    if (global.freezeframe == false)
    {
        if (global.combo >= 3 && supertauntbuffer < 500 && supertauntcharged == false)
            supertauntbuffer++
        else if (supertauntbuffer > 0)
            supertauntbuffer--
        if (supertauntbuffer >= 500 && supertauntcharged == false && state != (51 << 0) && global.miniboss == false)
        {
            supertauntbuffer = 500
            supertauntcharged = true
        }
        if ((supertauntbuffer <= 0 && supertauntcharged == true) || global.combo < 3)
        {
            supertauntbuffer = 0
            supertauntcharged = false
        }
        if (supertauntcharged == true && room != rank_room)
        {
            if (!instance_exists(supertaunteffect))
            {
                with (instance_create(x, y, obj_supertaunteffect))
                {
                    other.supertaunteffect = id
                    playerid = other.id
                }
            }
        }
    }
    if (mach3dash == false)
        mach3dashbuffer = 25
    else if (mach3dash == true && mach3dashbuffer > 0)
        mach3dashbuffer--
    if (mach3dashbuffer <= 0)
        mach3dash = false
    if (state == 55 && y > (room_height * 1.5))
    {
        global.levelname = "none"
        global.fakepeppino = 0
        script_execute(scr_playerreset)
        with (obj_player)
            targetDoor = "start"
        room = obj_player1.backtohubroom
    }
    if (state != (24 << 0) && state != (18 << 0) && state != (25 << 0))
        knightpoundbuffer = 0
    if (state == (125 << 0) || tauntstoredstate == (125 << 0) || frozenstate == (125 << 0))
        show_tricks = true
    else
    {
        show_tricks = false
        tricksperformed = 0
    }
    if (global.freezeframe == false)
    {
        if (toomanytoppings > 0)
            toomanytoppings -= 0.85
        if (toomanytoppings <= 0 && state == 91 && mach2 >= 100 && global.panic == true)
        {
            with (instance_create(x, (y + 17), obj_toppingtrail))
                playerid = other.id
            toomanytoppings = 6
        }
        if (!instance_exists(heatafterimage_id))
        {
            with (instance_create(x, y, obj_heatafterimage))
            {
                other.heatafterimage_id = id
                player = other.id
            }
        }
        if (firemouthtrail > 0)
            firemouthtrail--
        if (firemouthtrail <= 0 && state == (7 << 0) && sprite_index != spr_firemouthend)
        {
            with (instance_create(x, y, obj_firemouthafterimg))
                playerid = other.id
            firemouthtrail = 6
        }
        if (kungfutrail > 0)
            kungfutrail--
        if (kungfutrail <= 0 && state == (2 << 0) && sprite_index == spr_player_sjumpcancel)
        {
            with (instance_create(x, y, obj_firemouthafterimg))
            {
                playerid = other.id
                image_blend = make_color_rgb(48, 168, 248)
            }
            kungfutrail = 5
        }
        if (machtrail2 > 0)
            machtrail2--
        if (machtrail2 <= 0 && ((state == (2 << 0) && sprite_index != spr_tumbleend && sprite_index != spr_player_sjumpcancel && sprite_index != spr_player_splat) || state == (74 << 0) || (state == (129 << 0) && (sprite_index == spr_gustavo_ball || sprite_index == spr_gustavo_dash))))
        {
            with (instance_create(x, y, obj_clearafterimg))
                playerid = other.id
            machtrail2 = 4
        }
        if ((state == 91 || state == (63 << 0) || state == (121 << 0) || (state != 51 && (sprite_index == spr_player_shoryumineken || sprite_index == spr_playerN_spinjump)) || (pogomovespeed >= 12 && state == (119 << 0)) || state == (117 << 0) || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71 || pogojetcharge == true) && macheffect == 0)
        {
            macheffect = 1
            toomuchalarm1 = 6
            with (instance_create(x, y, obj_mach3effect))
            {
                playerid = other.object_index
                image_index = other.image_index - 1
                image_xscale = other.xscale
                sprite_index = other.sprite_index
            }
        }
        if (!((state == 91 || (state != 51 && (sprite_index == spr_player_shoryumineken || sprite_index == spr_playerN_spinjump)) || state == (121 << 0) || (pogomovespeed >= 12 && state == (119 << 0)) || state == (63 << 0) || state == (117 << 0) || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71 || pogojetcharge == true)))
            macheffect = 0
        if (toomuchalarm1 > 0)
        {
            toomuchalarm1 -= 1
            if (toomuchalarm1 <= 0 && (state == 91 || state == (63 << 0) || state == (121 << 0) || (state != 51 && (sprite_index == spr_player_shoryumineken || sprite_index == spr_playerN_spinjump)) || (pogomovespeed >= 12 && state == (119 << 0)) || state == (117 << 0) || state == 111 || state == 114 || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 17 || state == 9 || state == 70 || state == 10 || state == 71 || pogojetcharge == true || state == 37 || state == 22 || (state == 33 && mach2 >= 100)))
            {
                with (instance_create(x, y, obj_mach3effect))
                {
                    playerid = other.object_index
                    image_index = other.image_index - 1
                    image_xscale = other.xscale
                    sprite_index = other.sprite_index
                }
                toomuchalarm1 = 6
            }
        }
        if (global.freezeframe == false)
        {
            if (state != (122 << 0) && (state == 68 || sprite_index == spr_swingding || sprite_index == spr_player_shoryumineken || sprite_index == spr_playerN_spinjump || state == 86 || state == (7 << 0) || state == (121 << 0) || state == (117 << 0) || state == (119 << 0) || state == 91 || state == 60 || (state == 73 && thrown == 1) || state == 70 || state == 17 || state == (126 << 0) || state == 74 || state == 2 || state == 6 || state == 9 || state == 44 || state == 35 || state == 63 || state == 37 || state == 40 || state == 10 || (state == 43 && sprite_index == spr_piledriver) || state == 24 || state == 25 || state == 18 || state == 15 || state == 13 || state == 11))
                instakillmove = 1
            else if (state != (122 << 0))
                instakillmove = 0
        }
    }
    scr_collide_destructibles()
    if (actor == false)
    {
        if (state != 8 && state != 109 && state != 78 && state != 63 && state != 4 && state != 61 && state != 88 && state != 56 && state != 64 && state != 19 && state != 36 && state != 23 && state != 55)
            scr_collide_player()
        if (state == 88)
            scr_collide_player()
    }
    if (state != (74 << 0))
        initialfreefallvsp = 15
    if (state != (63 << 0))
        initialsuperjumpvsp = -14
}

