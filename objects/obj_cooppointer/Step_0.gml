if ((global.coop == 1 && playerid == obj_player2) || playerid == obj_player1)
{
    var _l = camera_get_view_x(view_camera[0])
    var _t = camera_get_view_y(view_camera[0])
    var _r = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])
    var _b = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])
    var _edge_x = camera_get_view_width(view_camera[0]) / 2 - 64
    var _edge_y = camera_get_view_height(view_camera[0]) / 2 - 64
    var _view_center_x = (_l + _r) / 2
    var _view_center_y = (_t + _b) / 2
    switch playerid.character
    {
        case "P":
            spr_arrow = spr_peppinoicon
            break
        case "N":
            spr_arrow = spr_noiseicon
            break
        case "S":
            spr_arrow = spr_snickicon
            break
        case "V":
            spr_arrow = spr_vigiicon
            break
        case "D":
            spr_arrow = spr_vigiicon
            break
        case "PM":
            spr_arrow = spr_peppinoicon
            break
    }

    with (playerid)
    {
        if (!(point_in_rectangle(x, y, (_l - 128), (_t - 128), (_r + 128), (_b + 128))))
        {
            var _x1 = x - _view_center_x
            var _y1 = y - _view_center_y
            if (abs(_x1 / _edge_x) > abs(_y1 / _edge_y))
            {
                var _x2 = sign(_x1) * _edge_x
                var _y2 = _x2 / _x1 * _y1
            }
            else
            {
                _y2 = sign(_y1) * _edge_y
                _x2 = _y2 / _y1 * _x1
            }
            ds_queue_enqueue(other.edge_indicator, (_view_center_x + _x2))
            ds_queue_enqueue(other.edge_indicator, (_view_center_y + _y2))
            ds_queue_enqueue(other.edge_indicator, point_direction(0, 0, _x1, _y1))
        }
    }
}
