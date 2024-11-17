if (other.state == (22 << 0))
{
    instance_create((x + other.xscale * 40), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = (46 << 0)
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
    grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}
else if (other.state == (129 << 0) && sprite_index == spr_gustavo_dash)
{
    instance_create((x + other.xscale * 40), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_gustavo_hauling
        heavy = 0
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
    grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}
