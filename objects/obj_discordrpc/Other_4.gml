scr_roomnames()
if (_message != -4)
    string_roomname = _message
else
    string_roomname = ""
var roomname = room_get_name(room)
if (global.snickchallenge == false)
{
    if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret" || room == entrance_treasure)
    {
        string_status = "Entrance"
        string_imagekey = "entrance"
        in_a_level = true
    }
    else if (string_letters(roomname) == "medieval" || string_letters(roomname) == "medievalsecret" || room == medieval_pizzamart || room == medieval_treasure)
    {
        string_status = "Pizzascape"
        string_imagekey = "medieval"
        in_a_level = true
    }
    else if (string_letters(roomname) == "ruin" || string_letters(roomname) == "ruinsecret" || room == ruin_pizzamart || room == ruin_treasure)
    {
        string_status = "The Ancient Cheese"
        string_imagekey = "ruin"
        in_a_level = true
    }
    else if (string_letters(roomname) == "dungeon" || string_letters(roomname) == "dungeonsecret" || room == dungeon_pizzamart || room == dungeon_treasure)
    {
        string_status = "Bloodsauce Dungeon"
        string_imagekey = "dungeon"
        in_a_level = true
    }
    else if (string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret" || room == ancient_treasure)
    {
        string_status = "Ancient Passageway"
        string_imagekey = "ancient"
        in_a_level = true
    }
    else if (string_letters(roomname) == "chateau" || string_letters(roomname) == "chateausecret" || room == chateau_pizzamart || room == chateau_treasure)
    {
        string_status = "Pizzascare"
        string_imagekey = "chateau"
        in_a_level = true
    }
    else if (string_letters(roomname) == "sanctum" || string_letters(roomname) == "sanctumsecret" || room == sanctum_pizzamart || room == sanctum_treasure)
    {
        string_status = "La Burrata Temple"
        string_imagekey = "sanctum"
        in_a_level = true
    }
    else if (string_letters(roomname) == "strongcold" || string_letters(roomname) == "strongcoldsecret" || room == strongcold_pizzamart || room == strongcold_miniboss || room == strongcold_treasure)
    {
        string_status = "Strongcold"
        string_imagekey = "strongcold"
        in_a_level = true
    }
    else if (string_letters(roomname) == "golf" || string_letters(roomname) == "golfsecret")
    {
        string_status = "Golf Eternal"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "resto" || string_letters(roomname) == "restosecret")
    {
        string_status = "Golf Eatin'"
        string_imagekey = "default"
        in_a_level = true
    }
    else if ((string_letters(roomname) == "desert" || string_letters(roomname) == "desertmart" || string_letters(roomname) == "desertsecret") && global.desertnight == false)
    {
        string_status = "Oregano Mirage"
        string_imagekey = "desert"
        in_a_level = true
    }
    else if (string_letters(roomname) == "factory" || string_letters(roomname) == "factorysecret")
    {
        string_status = "Pizzasauce Factory"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "sewer" || string_letters(roomname) == "sewersecret")
    {
        string_status = "Tubular Trash Zone"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "freezer" || string_letters(roomname) == "freezersecret")
    {
        string_status = "The Freezer"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "mansion" || string_letters(roomname) == "mansionsecret")
    {
        string_status = "Pepper Mansion"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "kungfu" || string_letters(roomname) == "kungfusecret")
    {
        string_status = "Streets of Pizza"
        string_imagekey = "default"
        in_a_level = true
    }
    else if (string_letters(roomname) == "space" || string_letters(roomname) == "spacesecret")
    {
        string_status = "Galactic Field"
        string_imagekey = "default"
        in_a_level = true
    }
    else
    {
        string_status = "Pizza Tower"
        string_imagekey = "default"
        in_a_level = false
    }
}
else if (global.snickchallenge == true)
{
    string_status = "Snick's Challenge"
    string_imagekey = "snickchallenge"
    in_a_level = true
    alarm[0] = 100
}
else
{
    string_status = "Pizza Tower"
    string_imagekey = "default"
    in_a_level = false
}
