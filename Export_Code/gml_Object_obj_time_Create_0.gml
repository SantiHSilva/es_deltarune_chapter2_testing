quit_timer = 0
keyboard_active = true
gamepad_active = true
gamepad_check_timer = 0
gamepad_id = 0
axis_value = 0.4
fullscreen_toggle = false
quicksaved = false
window_center_toggle = false
if (!instance_exists(obj_gamecontroller))
    instance_create(0, 0, obj_gamecontroller)
if (!i_ex(obj_border_controller))
    instance_create(0, 0, obj_border_controller)
paused = false
pausing = false
screenshot = -1
gif_recording = false
gif_timer = 0
loaded = false
border_fade_out = false
border_fade_in = false
border_alpha = 1
border_fade_value = 0.025
_border_image = border_line_1080
COMPLETEFILE_PREV[0] = ossafe_file_exists((("filech" + string((global.chapter - 1))) + "_3"))
COMPLETEFILE_PREV[1] = ossafe_file_exists((("filech" + string((global.chapter - 1))) + "_4"))
COMPLETEFILE_PREV[2] = ossafe_file_exists((("filech" + string((global.chapter - 1))) + "_5"))
COMPLETEFILE[0] = ossafe_file_exists("filech2_3")
COMPLETEFILE[1] = ossafe_file_exists("filech2_4")
COMPLETEFILE[2] = ossafe_file_exists("filech2_5")
if (COMPLETEFILE_PREV[0] || COMPLETEFILE_PREV[1] || COMPLETEFILE_PREV[2] || COMPLETEFILE[0] || COMPLETEFILE[1] || COMPLETEFILE[2])
    global.game_won = true
if (instance_number(obj_time) > 1)
    instance_destroy()
else
{
    display_height = display_get_height()
    display_width = display_get_width()
    window_size_multiplier = 1
    for (_ww = 2; _ww < 6; _ww += 1)
    {
        if (display_width > (640 * _ww) && display_height > (360 * _ww))
            window_size_multiplier = _ww
    }
    if (window_size_multiplier > 1)
    {
        window_set_size((640 * window_size_multiplier), (360 * window_size_multiplier))
        alarm[2] = 1
    }
    if (os_type == os_switch)
    {
        switch_controller_support_set_defaults()
        switch_controller_support_set_singleplayer_only(1)
        switch_controller_set_supported_styles(7)
    }
    scr_controls_default()
    scr_ascii_input_names()
    for (i = 0; i < 10; i += 1)
    {
        global.input_pressed[i] = false
        global.input_held[i] = false
        global.input_released[i] = false
    }
    application_surface_enable(true)
    application_surface_draw_enable(false)
    scr_enable_screen_border()
}
