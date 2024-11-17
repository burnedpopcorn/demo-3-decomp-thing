if (is_discord_ready == true)
{
    if (oldstring_status != string_status)
    {
        oldstring_status = string_status
        rousr_dissonance_set_details(string(string_status))
    }
    if (oldstring_roomname != string_roomname || oldstring_imagekey != string_imagekey)
    {
        oldstring_roomname = string_roomname
        oldstring_imagekey = string_imagekey
        rousr_dissonance_set_large_image(string(string_imagekey), string(string_roomname))
    }
    if (oldstring_state != string_state)
    {
        oldstring_state = string_state
        rousr_dissonance_set_state(string(string_state))
    }
    if (oldstring_characterstring != string_characterstring || oldstring_smallimagekey != string_smallimagekey)
    {
        oldstring_characterstring = string_characterstring
        oldstring_smallimagekey = string_smallimagekey
        rousr_dissonance_set_small_image(string(string_smallimagekey), string(string_characterstring))
    }
    if (obj_pause.pause != 1)
    {
        if (room != global.roomstart[global.newtitlescreen] && room != characterselect)
        {
            switch obj_player1.character
            {
                case "P":
                    string_characterstring = "Peppino"
                    string_smallimagekey = "peppino"
                    break
                case "N":
                    string_characterstring = "The Noise"
                    string_smallimagekey = "noise"
                    break
                case "S":
                    string_characterstring = "Snick"
                    string_smallimagekey = "snick"
                    break
                case "V":
                    string_characterstring = "The Vigilante"
                    string_smallimagekey = "vigi"
                    break
                case "D":
                    string_characterstring = "Danton"
                    string_smallimagekey = "dougie"
                    break
                case "PM":
                    string_characterstring = "Pepperman"
                    string_smallimagekey = "pepperman"
                    break
                case "PZ":
                    string_characterstring = "Pizzelle"
                    string_smallimagekey = "pizzelle"
                    break
                default:
                    string_characterstring = ""
                    string_smallimagekey = ""
                    break
            }

        }
        else
        {
            string_characterstring = ""
            string_smallimagekey = ""
        }
    }
    if (in_a_level == true)
    {
        if (global.timeattack == false)
            string_state = "Points: " + string_points + " | Rank: " + string_rank
        else
            string_state = "Time: " + string_timemin + ":" + string_timesec
        string_timemin = string(global.taminutes)
        if (global.taseconds < 10)
            string_timesec = "0" + string(global.taseconds)
        else
            string_timesec = string(global.taseconds)
        string_points = string(global.collect)
        if (global.collect >= global.srank)
            string_rank = "S"
        else if (global.collect > global.arank)
            string_rank = "A"
        else if (global.collect > global.brank)
            string_rank = "B"
        else if (global.collect > global.crank)
            string_rank = "C"
        else
            string_rank = "D"
    }
    else
        string_state = string_characterstring
}
