scr_draw_background_ps4_ch1 = function(argument0, argument1, argument2) // gml_Script_scr_draw_background_ps4_ch1
{
    var bg = argument0
    var xx = argument1
    var yy = argument2
    var scale = (window_get_width() / 1920)
    draw_background_stretched_ch1(bg, (xx * scale), (yy * scale), (background_get_width_ch1(bg) * scale), (background_get_height_ch1(bg) * scale))
    return;
}

