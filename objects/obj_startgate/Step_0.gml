targetDoor = "A"
if (obj_player1.spotlight == 1)
{
    player = obj_player1
    player2 = 61
}
else
{
    player = obj_player2
    player2 = 62
}
if (place_meeting(x, y, obj_player) && level == "snickchallenge")
    image_speed = 0.12
else
{
    image_speed = 0
    image_index = 0
}
if (level == "snickchallenge")
    sprite_index = spr_snickchallengecomputer
if (distance_to_object(player) < 50)
{
    with (obj_tv)
    {
        switch other.level
        {
            case "entrance":
                _message = "ENTRANCE"
                showtext = 1
                alarm[0] = 2
                break
            case "ancient":
                _message = "ANCIENT PASSAGEWAY"
                showtext = 1
                alarm[0] = 2
                break
            case "medieval":
                _message = "PIZZASCAPE"
                showtext = 1
                alarm[0] = 2
                break
            case "chateau":
                _message = "PIZZASCARE"
                showtext = 1
                alarm[0] = 2
                break
            case "ruin":
                _message = "THE ANCIENT CHEESE"
                showtext = 1
                alarm[0] = 2
                break
            case "sanctum":
                _message = "LA BURRATA TEMPLE"
                showtext = 1
                alarm[0] = 2
                break
            case "dungeon":
                _message = "BLOODSAUCE DUNGEON"
                showtext = 1
                alarm[0] = 2
                break
            case "strongcold":
                _message = "STRONGCOLD"
                showtext = 1
                alarm[0] = 2
                break
            case "snickchallenge":
                _message = "SNICK CHALLENGE"
                showtext = 1
                alarm[0] = 2
                break
            case "kungfu":
                _message = "WIP STREETS OF PIZZA"
                showtext = 1
                alarm[0] = 2
                break
            case "resto":
                _message = "WIP GOLF EATIN'"
                showtext = 1
                alarm[0] = 2
                break
            case "rooftop":
                _message = "WIP ROOF LEVEL"
                showtext = 1
                alarm[0] = 2
                break
            case "desert":
                _message = "OREGANO MIRAGE"
                showtext = 1
                alarm[0] = 2
                break
            case "factory":
                _message = "WIP FACTORY"
                showtext = 1
                alarm[0] = 2
                break
            case "beach":
                _message = "PINEAPPLE BEACH"
                showtext = 1
                alarm[0] = 2
                break
            case "pinball":
                _message = "EXTRATERRESTRIAL PINBALL"
                showtext = 1
                alarm[0] = 2
                break
            case "space":
                _message = "GALACTIC FIELD"
                showtext = 1
                alarm[0] = 2
                break
            default:
                _message = "NONE"
                showtext = 1
                alarm[0] = 2
                break
        }

        old_message = _message
    }
}
if place_meeting(x, y, player)
    drawtext = true
else
    drawtext = false
if (global.coop == 0)
{
    cplayerx = x
    cplayer1x = cplayerx
    cplayer2x = cplayerx
}
else
{
    cplayerx = x
    cplayer1x = cplayerx - 32
    cplayer2x = cplayerx + 32
}
ini_open("playerData_" + global.savefile + ".ini")
if (selected == true && ini_read_string("Ranks", string(level), "none") != "none" && has_selectedoption == false && string(level) != "snickchallenge")
{
    scr_getinput()
    if key_right2
    {
        selection = 1
        scr_soundeffect(sfx_step)
    }
    else if (-key_left2)
    {
        selection = 0
        scr_soundeffect(sfx_step)
    }
    if key_jump2
    {
        has_selectedoption = true
        scr_soundeffect(sfx_enemyprojectile)
    }
}
else if (selected == true)
    can_gotolevel = true
ini_close()
