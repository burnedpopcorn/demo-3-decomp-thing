if (condition != -4 && self.condition())
{
    if (activated == false || flags.do_once == false)
    {
        self.output()
        if (flags.do_save == true && ds_list_find_index(flags.saveroom, id) == -1)
            ds_list_add(flags.saveroom, id)
        activated = true
    }
}
else if (reverse_output != -4 && condition != -4 && (!self.condition()))
{
    if (activated == true || flags.do_once == false)
    {
        self.reverse_output()
        activated = false
    }
}
if (activated == true && flags.do_once == true)
    instance_destroy()
