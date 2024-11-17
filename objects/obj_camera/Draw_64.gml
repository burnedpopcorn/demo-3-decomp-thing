var player = obj_player1
var player2 = 61
if (obj_player1.spotlight == 0)
{
    player = obj_player2
    player2 = 62
}
else
{
    player = obj_player1
    player2 = 61
}
if (global.hudmode == false)
{
    switch global.newhud
    {
        case 0:
            var murdersprite = (player.character == "N" ? spr_playerN_noisebomb : spr_peppinobullethud)
            if (player.murderammo >= 1)
            {
                for (var i = 0; i < player.murderammo; i++)
                    draw_sprite_ext(murdersprite, -1, 50, (100 + 32 * i), 1, 1, 0, c_white, alpha)
            }
            if (obj_player1.spotlight == 1)
            {
                if (obj_player1.custompalette == true)
                    pal_swap_set(obj_player1.surf_pallete, 1, true)
                else if (obj_player1.custompalette == false)
                    pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
                else if (obj_player2.custompalette == true)
                    pal_swap_set(obj_player2.surf_pallete, 1, true)
                else if (obj_player2.custompalette == false)
                    pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)
            }
            if (player.state != 55)
            {
                if (player.character == "P")
                {
                    if (shoving == 1)
                        draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_knightpep_thunder)
                        draw_sprite_ext_camera(spr_pepinoHUDthunder, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index != spr_knightpep_start && (player.state == 24 || player.state == (25 << 0) || player.state == 18))
                        draw_sprite_ext_camera(spr_pepinoHUDknight, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_bombpep_end)
                        draw_sprite_ext_camera(spr_pepinoHUDbombend, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (instance_exists(obj_itspizzatime) || player.sprite_index == spr_bombpep_intro || player.sprite_index == spr_bombpep_runabouttoexplode || player.sprite_index == spr_bombpep_run || player.sprite_index == spr_player_fireass)
                        draw_sprite_ext_camera(spr_pepinoHUDscream, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 93 || (player.state == 77 && shake_mag > 0))
                        draw_sprite_ext_camera(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_player_victory || player.state == 56 || player.state == 62 || player.state == 23 || (player.state == 54 && player.sprite_index == spr_player_levelcomplete))
                        draw_sprite_ext_camera(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_player_machroll || player.sprite_index == spr_player_tumble)
                        draw_sprite_ext_camera(spr_pepinoHUDrolling, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 69 || (player.state == (119 << 0) && player.pogomovespeed < 7) || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
                        draw_sprite_ext_camera(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 70 || (player.state == (119 << 0) && player.pogomovespeed > 7 && player.pogomovespeed < 9) || player.sprite_index == spr_player_dive || player.sprite_index == spr_player_machslideboost || player.state == 17 || player.state == 111 || player.state == 22 || player.state == 43)
                        draw_sprite_ext_camera(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 && player.sprite_index == spr_player_crazyrun)
                        draw_sprite_ext_camera(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (117 << 0) && player.sprite_index == player.spr_jetpackcrazy)
                        draw_sprite_ext_camera(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 || (player.state == (119 << 0) && player.pogomovespeed > 9) || player.state == (117 << 0) || player.sprite_index == spr_player_machslideboost3)
                        draw_sprite_ext_camera(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 73 || player.sprite_index == spr_bombpep_end || player.sprite_index == spr_player_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == spr_player_idle))
                        draw_sprite_ext_camera(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.combo >= 3 && global.combobuffer > 0)
                        draw_sprite_ext_camera(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.angry == 1)
                        draw_sprite_ext_camera(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_player_hurtidle || player.sprite_index == spr_player_hurtwalk)
                        draw_sprite_ext_camera(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
                        draw_sprite_ext_camera(spr_pepinoHUDpanic, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_shotgun_pullout)
                        draw_sprite_ext_camera(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else
                        draw_sprite_ext_camera(spr_pepinoHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                }
                if (player.character == "N")
                {
                    if (shoving == 1)
                        draw_sprite_ext_camera(spr_noiseHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_knightpepthunder)
                        draw_sprite_ext_camera(spr_noiseHUD_thunder, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index != player.spr_knightpepstart && (player.state == 24 || player.state == (25 << 0) || player.state == 18))
                        draw_sprite_ext_camera(spr_noiseHUD_knight, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_bombpepend)
                        draw_sprite_ext_camera(spr_noiseHUD_bomb, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (instance_exists(obj_itspizzatime) || player.sprite_index == player.spr_bombpepintro || player.sprite_index == player.spr_bombpeprunabouttoexplode || player.sprite_index == player.spr_bombpeprun || player.sprite_index == player.spr_fireass)
                        draw_sprite_ext_camera(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 93 || (player.state == 77 && shake_mag > 0))
                        draw_sprite_ext_camera(spr_noiseHUD_groundpound, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_victory || player.state == 56 || player.state == 62 || player.state == 23 || (player.state == 54 && player.sprite_index == spr_player_levelcomplete))
                        draw_sprite_ext_camera(spr_noiseHUD_happy, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 69 || (player.state == (119 << 0) && player.pogomovespeed <= 7) || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
                        draw_sprite_ext_camera(spr_noiseHUD_mach1, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 70 || (player.state == (119 << 0) && player.pogomovespeed > 7 && player.pogomovespeed < 12) || player.sprite_index == player.spr_dive || player.sprite_index == player.spr_machslideboost || player.state == 17 || player.state == 111 || player.state == 22 || player.state == 43)
                        draw_sprite_ext_camera(spr_noiseHUD_mach2, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 && player.sprite_index == player.spr_crazyrun)
                        draw_sprite_ext_camera(spr_noiseHUD_crazyrun, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (117 << 0) && player.sprite_index == player.spr_jetpackcrazy)
                        draw_sprite_ext_camera(spr_noiseHUD_crazyrun, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 || (player.state == (119 << 0) && player.pogomovespeed >= 12) || player.state == (117 << 0) || player.sprite_index == player.spr_mach3boost)
                        draw_sprite_ext_camera(spr_noiseHUD_mach3, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 73 || player.sprite_index == player.spr_bombpepend || player.sprite_index == player.spr_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == player.spr_idle))
                        draw_sprite_ext_camera(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.combo >= 3 && global.combobuffer > 0)
                        draw_sprite_ext_camera(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.angry == 1)
                        draw_sprite_ext_camera(spr_noiseHUD_angry, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_hurtidle || player.sprite_index == player.spr_hurtwalk)
                        draw_sprite_ext_camera(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
                        draw_sprite_ext_camera(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_shotgun_pullout)
                        draw_sprite_ext_camera(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else
                        draw_sprite_ext_camera(spr_noiseHUD_idle, -1, 125, 100, 1, 1, 0, c_white, alpha)
                }
                if (player.character == "V")
                {
                    if (shoving == 1)
                        draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (sprite_index == spr_playerV_dead)
                        draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.vigihealth < 25 && player.vigihealth != 0)
                        draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.vigihealth == 0)
                        draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_angryidle || player.sprite_index == spr_playerV_angrymove)
                        draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_bodyslamprep || player.sprite_index == spr_playerV_bodyslam || player.sprite_index == spr_playerV_bodyslamland)
                        draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_suprise || player.sprite_index == spr_playerV_facehurt)
                        draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_keydoor || player.sprite_index == spr_playerV_victory || player.sprite_index == spr_playerV_gottreasure)
                        draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_keydoor || player.sprite_index == spr_playerV_keyget || player.sprite_index == spr_playerV_gottreasure)
                        draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 69 || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_dive)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 70 || player.state == (119 << 0) || player.sprite_index == spr_playerV_mach2boost || player.state == 17 || player.state == 22 || player.state == 43)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 && player.sprite_index == spr_playerV_crazyrun)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (117 << 0) && player.sprite_index == player.spr_jetpackcrazy)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 || player.state == (117 << 0) || player.sprite_index == spr_playerV_mach3boost)
                        draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 73 || player.sprite_index == spr_bombpep_end || player.sprite_index == spr_player_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == spr_player_idle))
                        draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_hurt)
                        draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.combo >= 3 && global.combobuffer > 0)
                        draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
                        draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerV_panic)
                        draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else
                        draw_sprite_ext_camera(spr_playerV_normalHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                }
                if (player.character == "S")
                {
                    if (shoving == 1)
                        draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_snick_thunder)
                        draw_sprite_ext_camera(spr_snickHUD_thunder, -1, 125, 60, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index != spr_snick_robotsword && (player.state == 24 || player.state == (25 << 0) || player.state == 18))
                        draw_sprite_ext_camera(spr_snickHUD_robo, -1, 125, 60, 1, 1, 0, c_white, alpha)
                    else
                        draw_sprite_ext_camera(spr_snickHUD_normal, -1, 125, 60, 1, 1, 0, c_white, alpha)
                }
                if (player.character == "PZ")
                {
                    if (shoving == 1)
                        draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == spr_playerPZ_knightthunder)
                        draw_sprite_ext_camera(spr_playerPZ_thunderHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index != spr_playerPZ_knightstart && (player.state == 24 || player.state == (25 << 0) || player.state == 18))
                        draw_sprite_ext_camera(spr_playerPZ_knightHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_hurt || player.sprite_index == player.spr_hurtjump)
                        draw_sprite_ext_camera(spr_playerPZ_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_bombpepend)
                        draw_sprite_ext_camera(spr_playerPZ_explodedHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (63 << 0))
                        draw_sprite_ext_camera(spr_playerPZ_superjumpHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (118 << 0) || player.state == (65 << 0))
                        draw_sprite_ext_camera(spr_playerPZ_superjumpprepHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 69 || (player.state == (119 << 0) && player.pogomovespeed <= 7) || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
                        draw_sprite_ext_camera(spr_playerPZ_mach1HUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 70 || (player.state == (119 << 0) && player.pogomovespeed > 7 && player.pogomovespeed < 12) || player.sprite_index == player.spr_dive || player.sprite_index == player.spr_machslideboost || player.state == 17 || player.state == 111 || player.state == 22 || player.state == 43)
                        draw_sprite_ext_camera(spr_playerPZ_mach2HUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 && player.sprite_index == player.spr_crazyrun)
                        draw_sprite_ext_camera(spr_playerPZ_mach4HUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (117 << 0) && player.sprite_index == player.spr_jetpackcrazy)
                        draw_sprite_ext_camera(spr_playerPZ_mach4HUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == 91 || (player.state == (119 << 0) && player.pogomovespeed >= 12) || player.state == (117 << 0) || player.sprite_index == player.spr_mach3boost)
                        draw_sprite_ext_camera(spr_playerPZ_mach3HUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_freefallland || player.sprite_index == player.spr_bodyslamland || player.state == (77 << 0) || player.sprite_index == player.spr_Timesup || player.sprite_index == player.spr_superjumpland || player.sprite_index == player.spr_hitwall)
                        draw_sprite_ext_camera(spr_playerPZ_slamHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.state == (74 << 0) || player.state == (92 << 0))
                        draw_sprite_ext_camera(spr_playerPZ_freefallHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.sprite_index == player.spr_bump || player.sprite_index == player.spr_slipnslide || player.sprite_index == player.spr_stunned)
                        draw_sprite_ext_camera(spr_playerPZ_bumpHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (player.angry == 1)
                        draw_sprite_ext_camera(spr_playerPZ_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else if (global.combo >= 3 && global.combobuffer > 0)
                        draw_sprite_ext_camera(spr_playerPZ_menacingHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                    else
                        draw_sprite_ext_camera(spr_playerPZ_normalHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
                }
                shader_reset()
                if (((player.movespeed < 2.4 || (!((player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22)))) && player.state != (119 << 0)) || (player.pogomovespeed <= 7 && player.state == (119 << 0) && player.movespeed <= 0))
                    draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 0, c_white, alpha)
                else if ((player.movespeed >= 2.4 && player.movespeed < 4.8 && (player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22) && player.state != (119 << 0)) || (player.pogomovespeed <= 7 && player.state == (119 << 0) && player.movespeed > 0))
                    draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 0, c_white, alpha)
                else if ((player.movespeed >= 4.8 && player.movespeed < 7.2 && (player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22) && player.state != (119 << 0)) || (player.pogomovespeed > 7 && player.state == (119 << 0) && player.pogomovespeed < 12))
                    draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 0, c_white, alpha)
                else if ((player.movespeed >= 7.2 && player.movespeed < 9.6 && (player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22) && player.state != (119 << 0)) || (player.pogomovespeed >= 12 && player.state == (119 << 0) && player.pogomovespeed < 14))
                    draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 0, c_white, alpha)
                else if ((player.movespeed >= 9.6 && player.movespeed < 12 && (player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22) && player.state != (119 << 0)) || (player.pogomovespeed >= 14 && player.state == (119 << 0)))
                    draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 0, c_white, alpha)
                else if (player.movespeed >= 12 && (player.state == 69 || player.state == 70 || player.state == 91 || player.state == (117 << 0) || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22))
                    draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 0, c_white, alpha)
            }
            break
        case 1:
            var newhudx = 150 + (irandom_range((-shakemag), shakemag))
            var newhudy = 100 + (irandom_range((-shakemag), shakemag)) + newhudyoffset
            if (global.levelname != "none" && (!((room == timesuproom || room == boss_room1 || room == Scootertransition || room == characterselect || room == global.roomstart[global.newtitlescreen] || room == Tutorialtrap || room == Titlescreen || room == rank_room || room == cowboytask || room == Tutorialtrap || room == cowboytask || room == timesuproom || room == hub_room3 || room == hub_room2 || room == hub_room1))))
            {
                if (global.stylethreshold > 0)
                {
                    if (floor(_image_index) < (sprite_get_number(spr_heatmeter) - 1))
                        _image_index += (0.1875 * global.stylethreshold)
                    else
                        _image_index = 0
                }
                else
                    _image_index = 0
                var heatw = sprite_get_width(spr_heatmeter_fill)
                var heath = sprite_get_height(spr_heatmeter_fill)
                var meter = global.style / 25
                draw_sprite_part_ext(spr_heatmeter_fill, _image_index, 0, 0, (heatw * meter), heath, (newhudx - sprite_get_xoffset(spr_heatmeter_fill)), (newhudy - sprite_get_yoffset(spr_heatmeter_fill)), 1, 1, c_white, alpha)
                pal_swap_set(spr_heatmeter_palette, clamp((global.stylethreshold - 1), 0, 10), false)
                draw_sprite_ext(spr_heatmeter, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                shader_reset()
                draw_sprite_ext(spr_pizzascore, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                if (global.timeattack == false)
                {
                    if (global.collect >= global.crank)
                        draw_sprite_ext(spr_pizzascore_pepper, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.collect >= global.brank)
                        draw_sprite_ext(spr_pizzascore_pepperoni, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.collect >= global.arank)
                        draw_sprite_ext(spr_pizzascore_olive, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.collect >= global.srank)
                        draw_sprite_ext(spr_pizzascore_shroom, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                }
                else
                {
                    if (global.timeattack_value < global.ctimerank)
                        draw_sprite_ext(spr_pizzascore_pepper, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.timeattack_value < global.btimerank)
                        draw_sprite_ext(spr_pizzascore_pepperoni, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.timeattack_value < global.atimerank)
                        draw_sprite_ext(spr_pizzascore_olive, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                    if (global.timeattack_value < global.stimerank)
                        draw_sprite_ext(spr_pizzascore_shroom, _image_index, newhudx, newhudy, 1, 1, 0, c_white, alpha)
                }
                switch global.timeattack
                {
                    case false:
                        draw_set_halign(fa_center)
                        draw_set_color(c_white)
                        draw_set_font(global.pointsfont)
                        var _string = string(global.collect)
                        var _string_length = string_length(_string)
                        if (collected != _string)
                        {
                            for (i = 0; i < _string_length; i++)
                                colors[i] = choose(0, 1, 2, 3)
                            collected = _string
                        }
                        var textyoffset = 0
                        var _index = floor(_image_index)
                        switch _index
                        {
                            case 0:
                                textyoffset = 0
                                break
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                textyoffset = 1
                                break
                            case 5:
                                textyoffset = -1
                                textyoffset = -2
                                break
                            case 6:
                                textyoffset = -2
                                break
                            case 7:
                                textyoffset = -3
                                break
                            case 8:
                                textyoffset = -5
                                break
                            case 9:
                                textyoffset = -5
                                break
                            case 10:
                                textyoffset = -3
                                break
                            case 11:
                                textyoffset = -3
                                break
                        }

                        for (i = 0; i < _string_length; i++)
                        {
                            var _xx = newhudx + 15 + (-((string_width(_string) / 2))) + string_width(_string) / _string_length * i
                            var _yy = newhudy - 55
                            var pal = colors[i]
                            var _yyoffset = ((i % 2) == 0 ? -4 : 0)
                            pal_swap_set(spr_font_collect_palette, pal, false)
                            draw_text(_xx, (_yy + _yyoffset + textyoffset), string_char_at(_string, (i + 1)))
                            shader_reset()
                        }
                        break
                    case true:
                        textyoffset = 0
                        _index = floor(_image_index)
                        switch _index
                        {
                            case 0:
                                textyoffset = 0
                                break
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                textyoffset = 1
                                break
                            case 5:
                                textyoffset = -1
                                textyoffset = -2
                                break
                            case 6:
                                textyoffset = -2
                                break
                            case 7:
                                textyoffset = -3
                                break
                            case 8:
                                textyoffset = -5
                                break
                            case 9:
                                textyoffset = -5
                                break
                            case 10:
                                textyoffset = -3
                                break
                            case 11:
                                textyoffset = -3
                                break
                        }

                        draw_sprite_ext(spr_pizzascoretimer, _image_index, newhudx, (newhudy - 2 + textyoffset), 1, 1, 0, c_white, alpha)
                        draw_set_halign(fa_center)
                        draw_set_color(c_white)
                        draw_set_font(global.timerfont)
                        var _min = string((global.taminutes < 10 ? ("0" + string(global.taminutes)) : string(global.taminutes)))
                        var _sec = string((global.taseconds < 10 ? ("0" + string(global.taseconds)) : string(global.taseconds)))
                        _string = string(_min) + ":" + string(_sec)
                        draw_text((newhudx - 5), (newhudy - 54 + textyoffset), _string)
                        break
                }

                murdersprite = (player.character == "N" ? spr_playerN_noisebomb : spr_peppinobullethud)
                if (player.murderammo >= 1)
                {
                    for (i = 0; i < player.murderammo; i++)
                        draw_sprite_ext(murdersprite, -1, (newhudx - 75 + 16 * i), (newhudy + 70), 1, 1, 0, c_white, alpha)
                }
            }
            break
    }

    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 0, c_white, 1)
    draw_set_font(global.font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (room != rank_room && room != strongcold_endscreen)
    {
        switch global.newhud
        {
            case 0:
                var vdrawx = 190
                var vdrawy = 65
                if (player.hurted == 1)
                {
                    vdrawx = 190 + (random_range(-1, 1))
                    vdrawy = 65 + (random_range(-1, 1))
                }
                else
                {
                    vdrawx = 190
                    vdrawy = 65
                }
                if (player.character == "V")
                    draw_text(vdrawx, (vdrawy + newhudyoffset), player.vigihealth)
                break
            case 1:
                vdrawx = 100
                vdrawy = 465
                var shake1 = 0
                var shake2 = 0
                if (player.hurted == 1)
                {
                    shake1 = random_range(-1, 1)
                    shake2 = random_range(-1, 1)
                }
                if (player.character == "V")
                {
                    var spriteWidth = sprite_get_width(spr_vigihealth_filled)
                    var spriteHeight = sprite_get_height(spr_vigihealth_filled)
                    var hpPercent = player.vigihealth / 100
                    draw_sprite_ext(spr_vigihealth_empty, -1, vdrawx, vdrawy, 1, 1, 0, c_white, 1)
                    draw_sprite_part_ext(spr_vigihealth_filled, -1, 0, 0, spriteWidth, (spriteHeight * hpPercent), (vdrawx - 50), (vdrawy + 50), 1, -1, c_white, 1)
                    draw_sprite_ext(spr_vigihealth_frame, -1, vdrawx, vdrawy, 1, 1, 0, c_white, 1)
                    draw_text((vdrawx + shake1), (vdrawy + shake2 - 16), player.vigihealth)
                }
                break
        }

    }
    var timery = (global.newhud == true ? 450 : 65)
    if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(((random_range(1, -1)) + 480), ((random_range(1, -1)) + timery), string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes == 0 && global.seconds <= 30)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(((random_range(1, -1)) + 480), ((random_range(1, -1)) + timery), string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)))
        }
    }
    ini_open("playerData_" + global.savefile + ".ini")
    var ranks = ini_read_string("Ranks", string(global.levelname), "none")
    ini_close()
    if (global.levelname != "none" && ranks != "none" && room != hub_room1 && room != hub_room2 && room != hub_room3 && room != cowboytask && room != timesuproom && room != Scootertransition && room != Tutorialtrap && room != Titlescreen && room != global.roomstart[global.newtitlescreen] && (!instance_exists(obj_endlevelfade)))
    {
        if (global.bonustimer == false)
            global.bonustimer = true
        var tiny = ":"
        var tinier = ":"
        var tinyish = ":"
        if (global.bonusseconds < 10)
            tiny = ":0"
        if (global.bonusmiliseconds < 10)
            tinier = ":0"
        if (global.bonusminutes < 10)
            tinyish = ":0"
        draw_set_color(c_white)
        draw_set_halign(fa_left)
        draw_set_font(global.smallfont)
        draw_text(823, 512, string_hash_to_newline(string(global.bonushour) + string(tinyish) + string(global.bonusminutes) + string(tiny) + string(global.bonusseconds) + string(tinier) + string(global.bonusmiliseconds)))
    }
    if (global.tempenabled == true)
    {
        var _width = sprite_get_width(spr_temperature_meterfill)
        var _height = sprite_get_height(spr_temperature_meterfill)
        global.temperature += global.temperature_spd
        global.temperature = clamp(global.temperature, 0, (global.temp_thresholdnumber * 100))
        var _tmp = global.temperature / global.temp_thresholdnumber * 100
        var _top = 0
        var _height2 = _height * _tmp
        draw_sprite_part_ext(spr_temperature_meterfill, 0, 0, _top, _width, _height2, 864, (192 + _height), 1, -1, c_white, 1)
        draw_sprite(spr_temperature_meter, 0, 864, 192)
    }
    if (global.levelname != "none" && (!((room == timesuproom || room == boss_room1 || room == Scootertransition || room == characterselect || room == global.roomstart[global.newtitlescreen] || room == Tutorialtrap || room == Titlescreen || room == rank_room || room == cowboytask || room == Tutorialtrap || room == cowboytask || room == timesuproom || room == hub_room3 || room == hub_room2 || room == hub_room1))))
    {
        if (global.timeattack == false)
        {
            var bubbleempty = spr_rankbubble_d
            var bubblefilled = spr_rankbubble_dfilled
            var local_rank = global.crank
            var minus_moment = 0
            var bubbleframe = 0
            switch global.currentrank
            {
                case "S":
                    bubbleempty = spr_rankbubble_s
                    bubblefilled = spr_rankbubble_sfilled
                    local_rank = global.srank
                    minus_moment = global.arank
                    bubbleframe = 0
                    break
                case "A":
                    bubbleempty = spr_rankbubble_a
                    bubblefilled = spr_rankbubble_afilled
                    local_rank = global.srank
                    minus_moment = global.arank
                    bubbleframe = 1
                    break
                case "B":
                    bubbleempty = spr_rankbubble_b
                    bubblefilled = spr_rankbubble_bfilled
                    local_rank = global.arank
                    minus_moment = global.brank
                    bubbleframe = 2
                    break
                case "C":
                    bubbleempty = spr_rankbubble_c
                    bubblefilled = spr_rankbubble_cfilled
                    local_rank = global.brank
                    minus_moment = global.crank
                    bubbleframe = 3
                    break
                default:
                    bubbleempty = spr_rankbubble_d
                    bubblefilled = spr_rankbubble_dfilled
                    local_rank = global.crank
                    minus_moment = 0
                    bubbleframe = 4
                    break
            }

            var bubbleWidth = sprite_get_width(bubblefilled)
            var bubbleHeight = sprite_get_height(bubblefilled)
            var rankpercent = (global.collect - minus_moment) / (local_rank - minus_moment)
            if (!surface_exists(rankbubblesurface))
                rankbubblesurface = surface_create(96, 96)
            else if surface_exists(rankbubblesurface)
            {
                surface_set_target(rankbubblesurface)
                draw_clear_alpha(c_white, 0)
                draw_sprite_ext(spr_rankbubble_bg, bubbleframe, (surface_get_width(rankbubblesurface) / 2), (surface_get_height(rankbubblesurface) / 2), 1, 1, 0, c_white, 1)
                if (global.currentrank == "S")
                    draw_sprite_ext(spr_rankbubble_sfilled, -1, 16, 16, 1, 1, 0, c_white, 1)
                else
                {
                    draw_sprite_ext(bubbleempty, -1, 16, 16, 1, 1, 0, c_white, 1)
                    draw_sprite_part_ext(bubblefilled, -1, 0, (bubbleHeight - bubbleHeight * rankpercent), bubbleWidth, (bubbleHeight * rankpercent), 16, (16 + bubbleHeight - bubbleHeight * rankpercent), 1, 1, c_white, 1)
                }
                surface_reset_target()
                draw_surface_ext(rankbubblesurface, (200 - surface_get_width(rankbubblesurface) / 2 * bubblescale + 1), (5 - surface_get_height(rankbubblesurface) / 2 * bubblescale + 1), (1 + bubblescale), (1 + bubblescale), 0, c_white, alpha)
            }
        }
        else if (global.timeattack == true)
        {
            bubbleempty = spr_rankbubble_d
            bubblefilled = spr_rankbubble_dfilled
            local_rank = global.stimerank
            minus_moment = 0
            bubbleframe = 0
            switch global.currentrank
            {
                case "D":
                    bubbleempty = spr_rankbubble_d
                    bubblefilled = spr_rankbubble_dfilled
                    local_rank = global.dtimerank
                    minus_moment = global.ctimerank
                    bubbleframe = 0
                    break
                case "C":
                    bubbleempty = spr_rankbubble_c
                    bubblefilled = spr_rankbubble_cfilled
                    local_rank = global.ctimerank
                    minus_moment = global.btimerank
                    bubbleframe = 1
                    break
                case "B":
                    bubbleempty = spr_rankbubble_b
                    bubblefilled = spr_rankbubble_bfilled
                    local_rank = global.btimerank
                    minus_moment = global.atimerank
                    bubbleframe = 2
                    break
                case "A":
                    bubbleempty = spr_rankbubble_a
                    bubblefilled = spr_rankbubble_afilled
                    local_rank = global.atimerank
                    minus_moment = global.stimerank
                    bubbleframe = 3
                    break
                default:
                    bubbleempty = spr_rankbubble_s
                    bubblefilled = spr_rankbubble_sfilled
                    local_rank = global.stimerank
                    minus_moment = 0
                    bubbleframe = 4
                    break
            }

            bubbleWidth = sprite_get_width(bubblefilled)
            bubbleHeight = sprite_get_height(bubblefilled)
            var ta_mins = floor(local_rank)
            var ta_sec = (local_rank - ta_mins) * 100
            var _local_rank = (ta_mins * 60 + ta_sec) * 60
            var ta_mmins = floor(minus_moment)
            ta_sec = (minus_moment - ta_mmins) * 100
            var _minus_moment = (ta_mmins * 60 + ta_sec) * 60
            rankpercent = (_local_rank - _minus_moment - (global.timeattack_points - _minus_moment)) / (_local_rank - _minus_moment)
            if (!surface_exists(rankbubblesurface))
                rankbubblesurface = surface_create(96, 96)
            else if surface_exists(rankbubblesurface)
            {
                surface_set_target(rankbubblesurface)
                draw_clear_alpha(c_white, 0)
                draw_sprite_ext(spr_rankbubble_bg, bubbleframe, (surface_get_width(rankbubblesurface) / 2), (surface_get_height(rankbubblesurface) / 2), 1, 1, 0, c_white, 1)
                if (global.currentrank == "D")
                    draw_sprite_ext(spr_rankbubble_d, -1, 16, 16, 1, 1, 0, c_white, 1)
                else
                {
                    draw_sprite_ext(bubbleempty, -1, 16, 16, 1, 1, 0, c_white, 1)
                    draw_sprite_part_ext(bubblefilled, -1, 0, (bubbleHeight - bubbleHeight * rankpercent), bubbleWidth, (bubbleHeight * rankpercent), 16, (16 + bubbleHeight - bubbleHeight * rankpercent), 1, 1, c_white, 1)
                }
                surface_reset_target()
                draw_surface_ext(rankbubblesurface, (200 - surface_get_width(rankbubblesurface) / 2 * bubblescale + 1), (5 - surface_get_height(rankbubblesurface) / 2 * bubblescale + 1), (1 + bubblescale), (1 + bubblescale), 0, c_white, alpha)
            }
        }
    }
}
draw_set_blend_mode(0)
