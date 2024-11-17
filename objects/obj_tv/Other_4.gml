showtext = 0
old_message = ""
if (global.snickchallenge == false)
{
    switch global.levelname
    {
        case "entrance":
            global.stimerank = 2.3
            global.srank = 14500
            break
        case "medieval":
            global.stimerank = 2.3
            global.srank = 14000
            break
        case "ruin":
            global.stimerank = 3
            global.srank = 16500
            break
        case "dungeon":
            global.stimerank = 4
            global.srank = 17500
            break
        case "ancient":
            global.stimerank = 3.4
            global.srank = 21500
            break
        case "chateau":
            global.stimerank = 3.3
            global.srank = 15000
            break
        case "sanctum":
            global.stimerank = 8.1
            global.srank = 19800
            break
        case "strongcold":
            global.stimerank = 6.3
            global.srank = 18900
            break
        case "desert":
            global.stimerank = 7.4
            global.srank = 19500
            break
        default:
            global.stimerank = 10
            global.srank = global.collect + 1005000
            break
    }

    global.arank = global.srank - global.srank / 4
    global.brank = global.srank - global.srank / 4 * 2
    global.crank = global.srank - global.srank / 4 * 3
    global.atimerank = global.stimerank + global.stimerank
    global.btimerank = global.stimerank + global.stimerank * 2
    global.ctimerank = global.stimerank + global.stimerank * 3
    global.dtimerank = global.stimerank + global.stimerank * 4
}
else
{
    global.srank = 7400
    global.arank = global.srank - global.srank / 4
    global.brank = global.srank - global.srank / 4 * 2
    global.crank = global.srank - global.srank / 4 * 3
}
if (bootingup == false)
{
    alarm[0] = -1
    imageindexstore = 0
    image_index = 0
    image_speed = 0
    tvsprite = spr_tvboot
    newtvsprite = spr_tv_open
    sprite_index = spr_tvboot
}
