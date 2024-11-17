if (global.peshinofollowing == false && originalroom == room)
{
    ds_list_add(global.follower, id)
    global.peshinofollowing = true
    alreadytouched = true
}
