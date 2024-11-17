function scr_escapetimes() //gml_Script_scr_escapetimes
{
    switch room
    {
        case entrance_10:
            global.minutes = 3
            global.seconds = 15
            break
        case medieval_10:
            global.minutes = 2
            global.seconds = 15
            break
        case ruin_11:
            global.minutes = 2
            global.seconds = 30
            break
        case dungeon_10:
            global.minutes = 3
            global.seconds = 30
            break
        case ancient_10:
            global.minutes = 4
            global.seconds = 0
            break
        case chateau_6:
            global.minutes = 3
            global.seconds = 25
            break
        case sanctum_11:
            global.minutes = 3
            global.seconds = 0
            break
        case strongcold_1:
            global.minutes = 3
            global.seconds = 50
            break
        case desert_15:
            global.minutes = 3
            global.seconds = 50
            break
        case beach_13:
            global.minutes = 2
            global.seconds = 30
            break
        default:
            global.minutes = 0
            global.seconds = 20
            break
    }

}

