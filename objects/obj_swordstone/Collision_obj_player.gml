with (other.id)
{
    if (grounded && other.sprite_index == spr_swordstone && state == 22 && character != "S")
    {
        other.alarm[0] = 50
        global.pausecombotime = true
        obj_tv.alarm[1] = 75
        scr_soundeffect(sfx_knightsword)
        global.SAGEknighttaken = 1
        momentum = 0
        movespeed = 0
        other.image_index = 1
        image_index = 0
        image_speed = 0.35
        sprite_index = spr_knightpepstart
        state = 24
        hsp = 0
        other.sprite_index = spr_swordstonetaken
    }
    if (grounded && other.sprite_index == spr_swordstone && state == 12 && character == "S")
    {
        other.alarm[0] = 50
        scr_soundeffect(sfx_knightsword)
        global.SAGEknighttaken = 1
        momentum = 0
        movespeed = 0
        other.image_index = 1
        image_index = 0
        image_speed = 0.35
        sprite_index = spr_knightpepstart
        state = 24
        hsp = 0
        other.sprite_index = spr_swordstonetaken
    }
}
