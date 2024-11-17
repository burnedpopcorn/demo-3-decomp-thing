function rousr_dissonance_set_state(argument0) //gml_Script_rousr_dissonance_set_state
{
    var _state = argument0
    with (global.__rousr_dissonance)
    {
        Is_dirty = true
        discord_set_state(_state)
    }
}

