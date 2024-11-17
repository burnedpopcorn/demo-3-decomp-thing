image_angle += (4 * image_xscale)
draw_angle += (4 * image_xscale * angledirection)
if (draw_angle > 16)
    angledirection = -1
if (draw_angle < -16)
    angledirection = 1
if (round(image_angle) >= 360)
    image_angle = 0
