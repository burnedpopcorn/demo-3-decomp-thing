image_speed = 0.35
shakemag = 0
shaketime = 0
var _depth = 391
var olddepth = 391
var a = layer_get_all()
for (var i = 0; i < array_length(a); i++)
{
    var tile_id = layer_tilemap_get_id_fixed(layer_get_name(a[i]))
    if (tile_id != -1)
    {
        _depth = layer_get_depth(a[i])
        if (_depth >= olddepth)
            olddepth = _depth
    }
}
depth = olddepth + 10
