function scr_desert_shader() //gml_Script_scr_desert_shader
{
    if (object_index != obj_camera)
        return;
    shader_set(shd_wave)
    surface_set_target(d3application_surface)
    wave_shdSpeed = 0.01
    wave_shdFreq = 100
    wave_shdSize = 0.6
    var uTime = shader_get_uniform(shd_wave, "Time")
    var uTexel = shader_get_uniform(shd_wave, "Texel")
    var uSpeed = shader_get_uniform(shd_wave, "xSpeed")
    var uFreq = shader_get_uniform(shd_wave, "xFreq")
    var uSize = shader_get_uniform(shd_wave, "xSize")
    var tex = surface_get_texture(application_surface)
    shader_set_uniform_f(uTime, current_time)
    shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex))
    shader_set_uniform_f(uSpeed, wave_shdSpeed)
    shader_set_uniform_f(uFreq, wave_shdFreq)
    shader_set_uniform_f(uSize, wave_shdSize)
    draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, 16777215, 1)
    surface_reset_target()
    shader_reset()
}

