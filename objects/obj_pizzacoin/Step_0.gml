hsp = _dir * 2
if ((!(scr_slope_ext((x + _dir), y))) && scr_solid((x + _dir), y))
    _dir *= -1
scr_collide()
