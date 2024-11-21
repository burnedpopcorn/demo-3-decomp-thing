function scr_enemy_throw() //scr_enemy_throw
{
    if (!variable_global_exists("throw_frame"))
    {
        global.throw_frame = 0
        global.throw_frame[206] = 2
        global.throw_frame[228] = 6
        global.throw_frame[215] = 2
        global.throw_frame[218] = 2
        global.throw_frame[292] = 2
        global.throw_frame[227] = 2
        global.throw_frame[211] = 8
        global.throw_frame[204] = 6
        global.throw_frame[205] = 0
        global.throw_frame[203] = 15
        global.throw_frame[213] = 3
        global.throw_frame[222] = 9
        global.throw_frame[207] = 6
        global.throw_frame[3] = 0
        global.throw_frame[212] = 2
        global.throw_frame[223] = 2
        global.throw_frame[469] = 12
        global.throw_sprite = spr_plug
        global.throw_sprite[206] = spr_pizzagoblin_throwbomb
        global.throw_sprite[228] = spr_cheeserobot_attack
        global.throw_sprite[215] = spr_spitcheese_spit
        global.throw_sprite[218] = spr_trash_throw
        global.throw_sprite[292] = spr_invtrash_throw
        global.throw_sprite[227] = spr_robot_attack
        global.throw_sprite[211] = spr_kentukykenny_throw
        global.throw_sprite[204] = spr_pizzard_shoot
        global.throw_sprite[205] = spr_pepgoblin_kick
        global.throw_sprite[203] = spr_swedishmonkey_eat
        global.throw_sprite[213] = spr_ranch_shoot
        global.throw_sprite[222] = spr_shrimp_knife
        global.throw_sprite[207] = spr_pizzacannongoblin_throwbomb
        global.throw_sprite[3] = spr_noiserobot_shoot
        global.throw_sprite[212] = spr_pickle_attack
        global.throw_sprite[223] = spr_ufolive_scared
        global.throw_sprite[469] = spr_ufogrounded_shoot
        global.reset_timer = 0
        global.reset_timer[206] = 200
        global.reset_timer[228] = 200
        global.reset_timer[215] = 100
        global.reset_timer[218] = 100
        global.reset_timer[292] = 100
        global.reset_timer[227] = 200
        global.reset_timer[211] = 200
        global.reset_timer[204] = 100
        global.reset_timer[205] = 100
        global.reset_timer[203] = 200
        global.reset_timer[213] = 100
        global.reset_timer[222] = 100
        global.reset_timer[207] = 200
        global.reset_timer[3] = 140
        global.reset_timer[212] = 200
        global.reset_timer[223] = 100 / (global.stylethreshold + 1)
        global.reset_timer[469] = 100 / (global.stylethreshold + 1)
    }
    hsp = 0
    if place_meeting(x, (y + 1), obj_railh)
        hsp = -5
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = 5
    if (sprite_index != global.throw_sprite[object_index])
        sprite_index = global.throw_sprite[object_index]
    if (floor(image_index) >= (image_number - 1))
        state = 102
    if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
    {
        bombreset = global.reset_timer[object_index]
        if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
            scr_soundeffect(sfx_enemyprojectile)
        switch object_index
        {
            case obj_pizzagoblin:
                with (instance_create(x, y, obj_pizzagoblinbomb))
                {
                    movespeed = 10
                    image_xscale = other.image_xscale
                    vsp = -8
                    countdown = 60
                }
                break
            case obj_cheeserobot:
                with (instance_create(x, y, obj_cheeseblob))
                {
                    sprite_index = spr_cheeserobot_goop
                    image_xscale = other.image_xscale
                    hsp = other.image_xscale * 8
                    vsp = 0
                    grav = 0
                }
                break
            case obj_spitcheese:
                with (instance_create((x + image_xscale * 6), (y - 6), obj_spitcheesespike))
                {
                    image_xscale = other.image_xscale
                    hsp = other.image_xscale * 5
                    vsp = -6
                    baddieID = other.id
                }
                break
            case obj_trash:
            case obj_invtrash:
                with (instance_create((x + image_xscale * 6), (y - 6), obj_cheeseball))
                {
                    image_xscale = other.image_xscale
                    hsp = other.image_xscale * 5
                    vsp = -4
                }
                break
            case obj_robot:
                with (instance_create(x, y, obj_robotknife))
                {
                    image_xscale = other.image_xscale
                    hsp = other.image_xscale * 5
                    baddieID = other.id
                }
                break
            case obj_shrimpblue:
                with (instance_create(x, y, obj_robotknife))
                {
                    image_xscale = other.image_xscale
                    hsp = other.image_xscale * 5
                    baddieID = other.id
                }
                break
            case obj_kentukykenny:
                with (instance_create(x, y, obj_kentukykenny_projectile))
                    image_xscale = other.image_xscale
                break
            case obj_pizzard:
                with (instance_create(x, y, obj_pizzard_bolt))
                    image_xscale = other.image_xscale
                break
            case obj_swedishmonkey:
                with (instance_create(x, y, obj_slipnslide))
                {
                    droppedbybaddie = true
                    baddieID = other.id
                    image_xscale = other.image_xscale
                    hsp = (-other.image_xscale) * 4
                    vsp = -5
                    with (obj_slipnslide)
                    {
                        if (baddieID == other.baddieID)
                            banana += 1
                    }
                }
                break
            case obj_pepgoblin:
                with (instance_create(x, y, obj_pepgoblin_kickhitbox))
                {
                    baddieID = other.id
                    image_xscale = other.image_xscale
                }
                break
            case obj_rancher:
                with (instance_create(x, y, obj_rancher_bullet))
                    image_xscale = other.image_xscale
                break
            case obj_cannongoblin:
                with (instance_create(x, y, obj_cannongoblinbomb))
                {
                    hsp = other.image_xscale * 8
                    image_xscale = other.image_xscale
                    grav = 0
                }
                with (instance_create(x, y, obj_cannongoblinbomb))
                {
                    hsp = other.image_xscale * 8
                    vsp = 0
                    image_xscale = other.image_xscale
                    grav = 0
                }
                break
            case obj_noiserobot:
                with (instance_create(x, y, obj_cannongoblinbomb))
                {
                    hsp = other.image_xscale * 8
                    vsp = 0
                    image_xscale = other.image_xscale
                    grav = 0
                }
                break
            case obj_pickle:
                attacking = 0
                with (instance_create(x, y, obj_forkhitbox))
                {
                    ID = other.id
                    image_xscale = other.image_xscale
                    sprite_index = other.sprite_index
                }
                break
            case obj_ufoolive:
                instance_create(x, y, obj_ufoolive_teleportal)
                break
            case obj_ufoolive_grounded:
                with (instance_create((x + 8 * image_xscale), y, obj_enemybullet))
                {
                    sprite_index = spr_ufogrounded_bullet
                    image_xscale = other.image_xscale
                }
                break
        }

    }
    if ((!grounded) && hsp < 0)
        hsp += 0.1
    else if ((!grounded) && hsp > 0)
        hsp -= 0.1
    if (object_index == obj_spitcheese)
    {
        sprite_index = spr_spitcheese_spit
        image_speed = 0.35
    }
}

