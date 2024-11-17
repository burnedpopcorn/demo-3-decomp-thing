if (global.seconds == 0 && global.minutes == 0)
{
    alarm[1] = -1
    alarm[2] = 3
}
if (obj_player1.collectscore > 0)
{
    with (instance_create(obj_player1.x, obj_player1.y, obj_pizzaloss))
    {
        playerid = obj_player1
        switch playerid.character
        {
            case "P":
                if (global.collectstyle == 0)
                    sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                else if (global.collectstyle == 1)
                    sprite_index = choose(spr_shroomcollectNEW, spr_tomatocollectNEW, spr_cheesecollectNEW, spr_sausagecollectNEW, spr_pineapplecollectNEW)
                break
            case "N":
                sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
                break
            case "S":
                sprite_index = spr_snickcollectible1
                break
            case "V":
                sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
                break
            case "PZ":
                sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)
                break
            default:
                sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_PZtopping1)
                break
        }

    }
}
if (instance_exists(obj_player2) && global.coop == true)
{
    if (obj_player2.collectscore > 0)
    {
        playerid = obj_player2
        switch playerid.character
        {
            case "P":
                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                break
            case "N":
                sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
                break
            case "S":
                sprite_index = spr_snickcollectible1
                break
            case "V":
                sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
                break
            case "PZ":
                sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)
                break
            default:
                sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_PZtopping1)
                break
        }

    }
}
if (obj_player1.collectscore > 0)
    obj_player1.collectscore -= 5
if (obj_player2.collectscore > 0)
    obj_player2.collectscore -= 5
if (global.miniboss == 1)
{
    with (obj_player)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = 4
        vsp = -10
        scr_soundstopall()
        scr_soundeffect(mu_timesup)
        if (obj_player1.collectscore > 100)
        {
            obj_player1.collectscore -= 100
            with (instance_create(x, y, obj_smallnumber))
            {
                color = 0x000001
                number = "-100"
            }
        }
        else if (obj_player1.collectscore != 0)
        {
            with (instance_create(x, y, obj_smallnumber))
            {
                color = 0x000001
                number = "-" + string(obj_player1.collectscore)
                obj_player1.collectscore = 0
            }
        }
        else
            obj_player1.collectscore = 0
        if instance_exists(obj_player2)
        {
            if (obj_player2.collectscore > 100)
            {
                obj_player2.collectscore -= 100
                with (instance_create(x, y, obj_smallnumber))
                {
                    color = 0x000001
                    number = "-100"
                }
            }
            else if (obj_player2.collectscore != 0)
            {
                with (instance_create(x, y, obj_smallnumber))
                {
                    color = 0x000001
                    number = "-" + string(obj_player2.collectscore)
                    obj_player2.collectscore = 0
                }
            }
            else
                obj_player2.collectscore = 0
        }
    }
    alarm[2] = -1
    global.miniboss = 0
}
