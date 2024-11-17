function scr_transformationcheck(argument0) //gml_Script_scr_transformationcheck
{
    with (argument0)
    {
        if (state == 24 || state == (126 << 0) || state == (122 << 0) || state == (78 << 0) || state == (64 << 0) || state == (65 << 0) || state == (63 << 0) || state == (51 << 0) || state == (118 << 0) || state == 27 || state == 18 || state == 25 || state == 15 || state == 11 || state == 13 || state == 14 || state == 86)
            return true;
        else
            return false;
    }
}

