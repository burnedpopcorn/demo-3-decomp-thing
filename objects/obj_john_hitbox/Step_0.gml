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
        if (state != 96 || player.instakillmove == true || player.state == (91 << 0) || player.state == (122 << 0) || player.state == (22 << 0) || player.state == (111 << 0) || player.state == (121 << 0))
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
    }
}
