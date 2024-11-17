var i = 0
showcollisionarray[i++] = obj_solid
showcollisionarray[i++] = obj_slope
showcollisionarray[i++] = obj_platform
showcollisionarray[i++] = obj_platformside
showcollisionarray[i++] = obj_movingplatformtrigger
showcollisionarray[i++] = obj_pitcollider
if (object_index == obj_solid || object_index == obj_slope || object_index == obj_platform)
    image_alpha = 0.5
i = 0
while (i < array_length(showcollisionarray))
{
    if (object_index == showcollisionarray[i])
    {
        visible = global.showcollisions
        break
    }
    else
        i++
}
