if (image_index == 0)
{
    image_speed = 0.35
    image_index = 0
    global.panic = 0
    global.snickchallenge = 0
    if instance_exists(obj_snickexe)
        instance_destroy(obj_snickexe)
    scr_sound(mu_ranks)
    pausedmusic = 90
    audio_stop_sound(mu_pizzatime)
    audio_stop_sound(mu_snickchallenge)
    audio_stop_sound(mu_snickchallengeend)
    audio_stop_sound(mu_snickescape)
}
