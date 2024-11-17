with (other.id)
{
    if (other.friendly == false)
    {
        if (state != 114 && state != (122 << 0) && state != 113 && (!((state == 51 && instance_exists(parry_id)))))
        {
            if (cutscene == 0 && other.grounded == 1 && state != 27 && (state == 22 || character == "S"))
            {
                global.pausecombotime = true
                if (other.thrownbyplayer == false)
                    bombpeptimer = 200
                else
                    bombpeptimer = clamp(floor(other.countdown * 2), 0, 200)
                state = 27
                image_index = 0
                sprite_index = spr_bombpepintro
                instance_destroy(other.id)
            }
            if (state == (74 << 0) && other.x >= (x - 45) && other.x <= (x + 45) && y <= other.y && other.grounded == true)
            {
                with (instance_create(x, y, obj_bombexplosion))
                    bombjump = true
                instance_destroy(other.id)
            }
        }
    }
}
