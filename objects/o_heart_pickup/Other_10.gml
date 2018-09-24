/// @description
instance_destroy();
audio_play_sound(a_collect_item, 2, false);
if global.player_health == global.player_max_health exit;
global.player_health += 1;

