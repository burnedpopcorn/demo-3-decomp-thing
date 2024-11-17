scr_commonenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (global.coop == true)
    var targetplayer = instance_nearest(x, y, obj_player)
else
    targetplayer = obj_player1
if (state == 94 || state == 102)
{
    var playerposition = x - targetplayer.x
    state = 96
    movespeed = 7
    image_xscale = (-sign(playerposition))
    slide = (-image_xscale) * (movespeed + 4)
}
if (hitboxcreate == 0 && state == 96 && targetplayer.instakillmove == false && targetplayer.state != (91 << 0) && targetplayer.state != (122 << 0) && targetplayer.state != (22 << 0) && targetplayer.state != (111 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_john_hitbox))
    {
        sprite_index = other.sprite_index
        ID = other.id
    }
}
if (hitboxcreate == 0 && state == (202 << 0) && targetplayer.instakillmove == false && targetplayer.state != (91 << 0) && targetplayer.state != (122 << 0) && targetplayer.state != (22 << 0) && targetplayer.state != (111 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
var player = (global.coop == false ? obj_player1 : instance_nearest(x, y, obj_player))
if (x != player.x && player.state != 27 && state != (202 << 0) && grounded && heatreset <= 0 && grounded && global.heatmeter >= 4)
{
    if (player.x > (x - 350) && player.x < (x + 350) && y <= (player.y + 25) && y >= (player.y - 25))
    {
        if (state == 102 || state == (96 << 0) || state == 94)
        {
            vsp = 0
            image_index = 0
            image_xscale = (-(sign(x - player.x)))
            sprite_index = spr_minijohn_heatstart
            movespeed = 8
            vsp = -6
            heatreset = 100
            flash = true
            state = (202 << 0)
            with (instance_create(x, y, obj_heataftereffectspawner))
            {
                image_index = other.image_index
                sprite_index = other.sprite_index
                image_xscale = other.image_xscale
            }
        }
    }
}
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
