if (global.panic == 1)
{
    if (obj_player1.spotlight == 1)
        playerid = obj_player1
    else
        playerid = obj_player2
    spawn = 1
    if (instance_number(obj_baddie) < 20)
    {
        var spawnx = playerid.x
        var spawny = playerid.y - 200
        var randompositionx = random_range(-500, 500)
        var spawnxrandom = spawnx + randompositionx
        objects[0] = obj_solid
        objects[1] = obj_slope
        objects[2] = obj_destructibles
        objects[3] = obj_enemyblock
        for (i = 0; i < 3; i += 1)
        {
            while (position_meeting((spawnxrandom + 50), (spawny - 50), objects[i]) || position_meeting((spawnxrandom - 50), (spawny - 50), objects[i]))
            {
                spawny = spawny + 1
                if (spawnxrandom > playerid.x)
                    spawnxrandom = spawnxrandom - 1
                if (spawnxrandom <= playerid.x)
                    spawnxrandom = spawnxrandom + 1
            }
            while (position_meeting((spawnxrandom + 50), (spawny + 50), objects[i]) || position_meeting((spawnxrandom - 50), (spawny + 50), objects[i]))
            {
                spawny = spawny - 1
                if (spawnxrandom > playerid.x)
                    spawnxrandom = spawnxrandom - 1
                if (spawnxrandom <= playerid.x)
                    spawnxrandom = spawnxrandom + 1
            }
        }
        with (instance_create(clamp(spawnxrandom, 200, (room_width - 200)), spawny, choose(obj_cooppointer, obj_parallax, obj_swordhitbox, obj_roomnames, obj_shieldbackupindicator, obj_file1, obj_menuselections, obj_mainmenuselect, obj_hat, obj_panicdebris, obj_coopflag, obj_bigdestructibles)))
        {
            instance_create(x, y, obj_pizzaportalfade)
            important = 1
            if (object_index != obj_peasanto)
                state = 106
            stunned = 50
        }
    }
}
alarm[2] = 200
