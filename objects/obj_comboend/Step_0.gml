if (activated == true)
{
    if (storedscore <= 0)
    {
        image_alpha -= 0.15
        if (image_alpha <= 0)
        {
            player.endcombo = false
            activated = false
            image_alpha = 1
        }
    }
}
scale = approach(scale, 1, 0.005)
visible = activated
