function scr_endlevel() //scr_endlevel
{
    var obj_index = (object_index == obj_treasure ? id : other.id)
    if (!instance_exists(obj_gatetransition))
        instance_create(obj_index.x, obj_index.y, obj_gatetransition)
    if (global.timeattack == 1)
        obj_timeattack.stop = 1
    global.combotime = 0
    scr_soundeffect(sfx_comboend)
    if (global.combo > 3)
    {
        var randomchance = irandom_range(0, 100)
        if (randomchance < global.quipsfrequency)
            scr_soundeffect(sfx_yipee, sfx_prettygood)
    }
    if (obj_player1.storedscore > 0 || obj_player2.storedscore > 0)
    {
        if (global.newhud == false)
        {
            with (obj_tv)
            {
                shake = true
                alarm[2] = 50
            }
        }
        else
        {
            with (obj_camera)
                shakemag = 7
        }
    }
    global.combo = 0
    obj_player1.collectscore += obj_player1.storedscore
    obj_player2.collectscore += obj_player2.storedscore
    obj_player1.storedscore = 0
    obj_player2.storedscore = 0
    targetDoor = "A"
    obj_camera.alarm[2] = -1
    scr_stopescapemusic()
    if (global.timeattack == false)
    {
        if (global.collect >= global.srank)
        {
            if (global.snickchallenge == false)
            {
                if (global.comboended == false && global.treasure == true)
                    global.rank = "p"
                else if (global.comboended == false || global.treasure == true)
                    global.rank = "s+"
                else
                    global.rank = "s"
            }
            else if (global.got_hurt == false && global.toppintotal >= 15)
                global.rank = "p"
            else if (global.got_hurt == false || global.toppintotal >= 15)
                global.rank = "s+"
            else
                global.rank = "s"
        }
        else if (global.collect > global.arank)
            global.rank = "a"
        else if (global.collect > global.brank)
            global.rank = "b"
        else if (global.collect > global.crank)
            global.rank = "c"
        else
            global.rank = "d"
    }
    else if (global.timeattack_value <= global.stimerank)
    {
        if (global.toppintotal >= 5 && global.deathmode == true)
            global.rank = "p"
        else if (global.toppintotal >= 5 || global.deathmode == true)
            global.rank = "s+"
        else
            global.rank = "s"
    }
    else if (global.timeattack_value <= global.atimerank)
        global.rank = "a"
    else if (global.timeattack_value <= global.btimerank)
        global.rank = "b"
    else if (global.timeattack_value <= global.ctimerank)
        global.rank = "c"
    else
        global.rank = "d"
    var player = focused_player()
    switch global.rank
    {
        case "p":
        case "s+":
        case "s":
            if (player.character == "PZ")
                scr_soundstop(6)
            else
                scr_soundstop(90)
            break
        case "a":
            if (player.character == "PZ")
                scr_soundstop(1)
            else
                scr_soundstop(91)
            break
        case "b":
            if (player.character == "PZ")
                scr_soundstop(2)
            else
                scr_soundstop(92)
            break
        case "c":
            if (player.character == "PZ")
                scr_soundstop(3)
            else
                scr_soundstop(93)
            break
        case "d":
            if (player.character == "PZ")
                scr_soundstop(166)
            else
                scr_soundstop(94)
            break
    }

    ini_open("playerData_" + global.savefile + ".ini")
    if (ini_read_string("Secret", string(global.levelname), 0) < global.secretfound)
        ini_write_string("Secret", string(global.levelname), global.secretfound)
    if (ini_read_string("Treasure", string(global.levelname), 0) == 0)
        ini_write_string("Treasure", string(global.levelname), global.treasure)
    if (ini_read_string("Highscore", string(global.levelname), 0) < global.collect && global.timeattack == false)
        ini_write_string("Highscore", string(global.levelname), global.collect)
    if (ini_read_real("TimeAttack", string(global.levelname), 0) < global.timeattack_value)
        ini_write_real("TimeAttack", string(global.levelname), global.timeattack_value)
    if (ini_read_real("Laps", string(global.levelname), 0) < global.lapping)
        ini_write_real("Laps", string(global.levelname), global.lapping)
    if (ini_read_string("Deathmode", string(global.levelname), 0) == 0)
        ini_write_string("Deathmode", string(global.levelname), global.deathmode)
    if (ini_read_string("Toppin", (string(global.levelname) + "1"), 0) == 0)
        ini_write_string("Toppin", (string(global.levelname) + "1"), global.shroomfollow)
    if (ini_read_string("Toppin", (string(global.levelname) + "2"), 0) == 0)
        ini_write_string("Toppin", (string(global.levelname) + "2"), global.cheesefollow)
    if (ini_read_string("Toppin", (string(global.levelname) + "3"), 0) == 0)
        ini_write_string("Toppin", (string(global.levelname) + "3"), global.tomatofollow)
    if (ini_read_string("Toppin", (string(global.levelname) + "4"), 0) == 0)
        ini_write_string("Toppin", (string(global.levelname) + "4"), global.sausagefollow)
    if (ini_read_string("Toppin", (string(global.levelname) + "5"), 0) == 0)
        ini_write_string("Toppin", (string(global.levelname) + "5"), global.pineapplefollow)
    if (ini_read_real("Rescued", string(global.levelname), 0) < global.toppintotal)
        ini_write_real("Rescued", string(global.levelname), global.toppintotal)
    var string_rank = string((global.timeattack == false ? "Ranks" : "Time"))
    if (rank_checker(global.rank) > rank_checker(ini_read_string(string_rank, string(global.levelname), "d")))
        ini_write_string(string_rank, string(global.levelname), global.rank)
    ini_close()
    if (!instance_exists(obj_endlevelfade))
    {
        with (instance_create(x, y, obj_endlevelfade))
        {
            var messaged = ""
            if (global.timeattack == false)
            {
                if (global.snickchallenge == false)
                {
                    messaged = "GOT THE SECRET TREASURE!!"
                    if (global.treasure == true)
                        ds_queue_enqueue(_meesage_queue, messaged)
                    messaged = "HELD THE COMBO UNTIL THE END!"
                    if (global.comboended == false)
                        ds_queue_enqueue(_meesage_queue, messaged)
                }
                else
                {
                    messaged = "RESCUED ALL 15 TOPPINS!!"
                    if (global.toppintotal >= 15)
                        ds_queue_enqueue(_meesage_queue, messaged)
                    messaged = "ESCAPED WITH NO HITS TAKEN!"
                    if (global.got_hurt == false)
                        ds_queue_enqueue(_meesage_queue, messaged)
                }
            }
            else
            {
                messaged = "SURVIVED DEATH MODE!!"
                if (global.deathmode == true)
                    ds_queue_enqueue(_meesage_queue, messaged)
                messaged = "ESCAPED WITH ALL TOPPINS!"
                if (global.toppintotal >= 5)
                    ds_queue_enqueue(_meesage_queue, messaged)
            }
        }
    }
    obj_player1.state = 78
    obj_player1.sprite_index = obj_player1.spr_lookdoor
    if instance_exists(obj_player2)
    {
        obj_player2.state = 78
        obj_player2.sprite_index = obj_player2.spr_lookdoor
    }
    obj_endlevelfade.alarm[0] = 510
    image_index = 0
    global.panic = 0
    global.snickchallenge = 0
    global.fakepeppino = 0
    global.lapping = 0
    global.laptouched = 0
}

