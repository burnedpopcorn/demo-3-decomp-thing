x = playerid.x
y = playerid.y
if playerid.grounded
    visible = true
else
    visible = false
image_xscale = playerid.xscale
if (global.coop == 1 && instance_exists(obj_player2))
{
    if (coopcreated == 0)
    {
        with (instance_create(x, y, obj_treasureshadow))
        {
            coopcreated = 1
            other.coopcreated = 1
            playerid = obj_player2
        }
    }
}
