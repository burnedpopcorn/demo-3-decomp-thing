function scr_queue_message(argument0, argument1) //gml_Script_scr_queue_message
{
    if (argument0 == undefined)
        argument0 = ""
    if (argument1 == undefined)
        argument1 = -4
    ds_queue_enqueue(global.newhudmessage, argument0)
    ds_queue_enqueue(global.newhudmessage, argument1)
}

function scr_queue_tvanim(argument0, argument1) //gml_Script_scr_queue_tvanim
{
    if (argument0 == undefined)
        argument0 = -4
    if (argument1 == undefined)
        argument1 = 150
    ds_queue_enqueue(global.newhudtvanim, argument0)
    ds_queue_enqueue(global.newhudtvanim, argument1)
}

