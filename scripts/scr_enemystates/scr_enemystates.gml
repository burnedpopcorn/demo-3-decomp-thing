function scr_enemystates() //scr_enemystates
{
    switch state
    {
        case 94:
            scr_enemy_idle()
            break
        case 96:
            scr_enemy_charge()
            break
        case 98:
            scr_enemy_turn()
            break
        case 102:
            scr_enemy_walk()
            break
        case 104:
            scr_enemy_land()
            break
        case 105:
            scr_enemy_hit()
            break
        case 106:
            scr_enemy_stun()
            break
        case 97:
            scr_enemy_throw()
            break
        case 109:
            scr_enemy_grabbed()
            break
        case 200:
            scr_enemy_shake()
            break
        case (201 << 0):
            scr_enemy_frozen()
            break
        case (202 << 0):
            scr_enemy_heat()
            break
        case (203 << 0):
            scr_enemy_chase()
            break
    }

}

