if (falling == 1 && vsp > 0)
{
    instance_create(x, y, obj_stompeffect)
    with (other.id)
    {
        image_index = 0
        state = 31
    }
    vsp = -5
    hsp = 5
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = 30 / room_speed
    }
}