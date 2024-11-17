obj_camera.alarm[2] = -1
global.panic = 0
global.snickchallenge = 0
global.fakepeppino = 0
if (sprite_index != sprgot)
    sprite_index = spridle
if (place_meeting(x, y, obj_player1) && player == obj_gmliveblank)
{
    with (obj_player1)
    {
        treasure_x = x
        treasure_y = y
        treasure_room = room
        if grounded
        {
            if (global.timeattack == 1)
                obj_timeattack.stop = 1
            global.lapping = 0
            global.laptouched = 0
            targetDoor = "A"
            obj_camera.alarm[2] = -1
            global.panic = 0
            global.snickchallenge = 0
            global.fakepeppino = 0
            scr_stopescapemusic()
            ds_list_add(global.saveroom, other.id)
            global.treasure = 1
            hsp = 0
            vsp = 0
            if (other.sprite_index == other.spridle)
                other.alarm[0] = 300
            if (other.sprite_index == other.spridle)
            {
                state = 23
                scr_soundeffect(sfx_secretfound)
                scr_soundstop(128)
            }
            other.sprite_index = other.sprgot
            other.x = obj_player1.x
            other.y = obj_player1.y - 35
            obj_tv.showtext = 1
            obj_tv._message = "YOU GOT A TOWER SECRET TREASURE!!!"
            obj_tv.alarm[0] = 200
            other.player = obj_randomenemyspawner
        }
    }
}
if (place_meeting(x, y, obj_player2) && player == obj_gmliveblank)
{
    with (obj_player2)
    {
        treasure_x = x
        treasure_y = y
        treasure_room = room
        if grounded
        {
            if (global.timeattack == 1)
                obj_timeattack.stop = 1
            global.lapping = 0
            global.laptouched = 0
            targetDoor = "A"
            obj_camera.alarm[2] = -1
            global.panic = 0
            global.snickchallenge = 0
            global.fakepeppino = 0
            scr_stopescapemusic()
            ds_list_add(global.saveroom, other.id)
            global.treasure = 1
            hsp = 0
            vsp = 0
            if (other.sprite_index == other.spridle)
                other.alarm[0] = 300
            if (other.sprite_index == other.spridle)
            {
                state = 23
                scr_soundeffect(sfx_secretfound)
                scr_soundstop(128)
            }
            other.sprite_index = other.sprgot
            other.x = obj_player2.x
            other.y = obj_player2.y - 35
            obj_tv.showtext = 1
            obj_tv._message = "YOU GOT A TOWER SECRET TREASURE!!!"
            obj_tv.alarm[0] = 200
            other.player = obj_toppingtrail
        }
    }
}
global.combotime = 60
global.pausecombotime = true
