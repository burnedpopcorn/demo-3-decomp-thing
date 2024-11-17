if (other.object_index != obj_onewaybigblock && other.object_index != obj_secretonewaybigblock)
{
    with (other)
    {
        initialhsp = random_range(-4, 4)
        initialvsp = random_range(-4, 0)
        event_user(0)
    }
}
else if (other.object_index == obj_onewaybigblock || other.object_index == obj_secretonewaybigblock)
{
    if (sign(other.image_xscale) == 1 && x > other.x)
    {
        with (other)
        {
            initialhsp = random_range(-4, 4)
            initialvsp = random_range(-4, 0)
            event_user(0)
        }
    }
    else if (sign(other.image_xscale) == -1 && x < other.x)
    {
        with (other)
        {
            initialhsp = random_range(-4, 4)
            initialvsp = random_range(-4, 0)
            event_user(0)
        }
    }
    else
        instance_destroy()
}
