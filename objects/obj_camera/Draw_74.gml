application_surface_draw_enable(false)
var appa = 1
if (global.screenmelt == 1 && global.panic == 1 && global.panicbg)
    appa = lerp(1, 0.45, (global.wave / global.maxwave))
if (!surface_exists(d3application_surface))
{
    d3application_surface = surface_create(960, 540)
    surface_copy(d3application_surface, 0, 0, application_surface)
}
else
{
    gpu_set_blendmode_ext_sepalpha(5, 6, 5, 2)
    if (global.visual_temperature == (1 << 0))
        scr_desert_shader()
    else
    {
        surface_set_target(d3application_surface)
        draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, 16777215, 1)
        surface_reset_target()
    }
    gpu_set_blendmode(bm_normal)
}
if (!surface_exists(final_application_surface))
    final_application_surface = surface_create(960, 540)
var shader = -4
if (global.snickchallenge == true && global.minutes < 2)
    shader = shd_posterization
else if (global.panic && global.minutes <= 1)
    shader = shd_greyscale
else
    shader = -4
surface_set_target(final_application_surface)
draw_surface_stretched_ext(d3application_surface, 0, 0, 960, 540, 16777215, appa)
surface_reset_target()
if (shader != -4)
{
    shader_set(shader)
    var fade = shader_get_uniform(shader, "fade")
    shader_set_uniform_f(fade, greyscalefade)
    draw_surface_stretched_ext(final_application_surface, 0, 0, 960, 540, 16777215, 1)
    shader_reset()
}
else
    draw_surface_stretched_ext(final_application_surface, 0, 0, 960, 540, 16777215, 1)
