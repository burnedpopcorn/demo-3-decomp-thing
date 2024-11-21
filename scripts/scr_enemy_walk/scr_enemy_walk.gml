function scr_enemy_walk() //scr_enemy_walk
{
    var _movespeed = movespeed + (clamp(global.heatmeter, 0, 3.25)) * sign(movespeed)
    var _image_speed = 0.35 + global.heatmeter * 0.05
    var rail = 0
    if grounded
        rail = (place_meeting(x, (y + 1), obj_railh) ? -5 : (place_meeting(x, (y + 1), obj_railh2) ? 5 : 0))
    else
        rail = 0
    if (grounded && object_index != obj_spitcheese && object_index != obj_ufoolive && object_index != obj_treasureguy && object_index != obj_ninja && object_index != obj_trash && object_index != obj_fencer && object_index != obj_rancher && object_index != obj_banditochicken && object_index != obj_ancho)
        hsp = image_xscale * _movespeed + rail
    else if (sprite_index == spr_indiancheese_land || sprite_index == spr_indiancheese_jump || object_index == obj_ufoolive)
        hsp = image_xscale * _movespeed + rail
    else if (object_index != obj_ancho)
        hsp = rail
    if (object_index != obj_indiancheese && object_index != obj_treasureguy && object_index != obj_spitcheese)
        sprite_index = walkspr
    else if (object_index == obj_spitcheese)
    {
    }
    else if (sprite_index == scaredspr)
        sprite_index = walkspr
    image_speed = _image_speed
    if (scr_solid((x + sign(image_xscale)), y) && (!(scr_slope_ext((x + sign(image_xscale)), y))))
    {
        if grounded
        {
            if (object_index == obj_forknight)
            {
                image_xscale *= -1
                image_index = 0
                sprite_index = spr_forknight_turn
                state = 94
            }
            else if (object_index == obj_noisey)
            {
                image_xscale *= -1
                image_index = 0
                sprite_index = spr_noisey_turn
                state = 94
            }
            else if grounded
                image_xscale *= -1
        }
        else if (object_index == obj_ufoolive && (!(scr_slope_ext((x + sign(image_xscale)), y))))
            image_xscale *= -1
    }
    with (instance_place((x + sign(image_xscale)), y, obj_hallway))
    {
        var backtoroom = (-sign(image_xscale))
        if (sign(other.image_xscale) != backtoroom)
        {
            with (other.id)
            {
                if grounded
                {
                    if (object_index == obj_forknight)
                    {
                        image_xscale = backtoroom
                        image_index = 0
                        sprite_index = spr_forknight_turn
                        state = 94
                    }
                    else if (object_index == obj_noisey)
                    {
                        image_xscale = backtoroom
                        image_index = 0
                        sprite_index = spr_noisey_turn
                        state = 94
                    }
                    else
                        image_xscale = backtoroom
                }
                else if (object_index == obj_ufoolive && (!(scr_slope_ext((x + sign(image_xscale)), y))))
                    image_xscale = backtoroom
            }
        }
    }
    if (object_index != obj_ancho && object_index != obj_ufoolive)
    {
        if (!((scr_solid((x + image_xscale * 15), (y + 31)) || place_meeting((x + image_xscale * 15), (y + 31), obj_platform))))
        {
            if (movespeed > 0 && grounded)
            {
                if (object_index == obj_ninja)
                {
                    vsp = -11
                    image_index = 0
                    image_xscale = (-(sign(x - obj_player.x)))
                    state = 96
                }
                else if (object_index == obj_forknight)
                {
                    image_xscale *= -1
                    image_index = 0
                    sprite_index = spr_forknight_turn
                    state = 94
                }
                else if (object_index == obj_noisey)
                {
                    image_xscale *= -1
                    image_index = 0
                    sprite_index = spr_noisey_turn
                    state = 94
                }
                else
                    image_xscale *= -1
            }
        }
    }
}

