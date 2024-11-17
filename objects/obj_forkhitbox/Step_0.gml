var player = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (!instance_exists(ID))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
    with (ID)
    {
        if (object_index == obj_cheeseslime)
        {
            if ((!((state == (202 << 0) && floor(image_index) <= 5 && sprite_index == spr_cheeseslime_heat))) || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_robot)
        {
            if (sprite_index == stunspr || sprite_index == walkspr || sprite_index == idlespr)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_minijohn)
        {
            if (state != (202 << 0) || player.instakillmove == true || player.state == (91 << 0) || player.state == (122 << 0) || player.state == (22 << 0) || player.state == (111 << 0) || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_forknight || object_index == obj_indiancheese || object_index == obj_noisey)
        {
            if ((state != 102 && state != (202 << 0)) || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_indiancheese)
        {
            if ((state != 102 && sprite_index != spr_indiancheese_spotted) || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_boulder)
        {
            if (hitwall == 0)
                instance_destroy(other.id)
        }
        if (object_index == obj_snickexe)
        {
            if (player.instakillmove == 1 || player.state == 22 || player.state == (121 << 0))
            {
                instance_destroy(other.id)
                hitboxcreate = 0
            }
        }
        if (object_index == obj_noisecrusher)
        {
            if (state != 95 || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_pizzice)
        {
            if ((state != 96 && state != (202 << 0)) || scared == 1 || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_shrimpred)
        {
            if (sprite_index != spr_shrimp_punch || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_pickle)
        {
            if (state != 97)
                instance_destroy(other)
        }
        if (object_index == obj_peasanto || object_index == obj_fencer || object_index == obj_ninja || object_index == obj_ancho)
        {
            if ((state != 96 && state != (202 << 0)) || player.state == (121 << 0))
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
    }
}
