var array = showcollisionarray
var length = array_length(array)
for (var i = length - 1; i >= 0; i--)
{
    with (array[i])
    {
        if (object_index == array[i])
            visible = other.showcollisions
    }
}
layer_set_visible("Tiles_Solid", showcollisions)
