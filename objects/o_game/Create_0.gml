//全局变量的定义方法
global.player_max_health = 4;
global.player_health = global.player_max_health;

global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;

global.player_gems = 0;

global.one_second = game_get_speed(gamespeed_fps);

//audio_play_sound(a_music, 10, true);

instance_create_layer(0, 0, "Instances", o_input);
