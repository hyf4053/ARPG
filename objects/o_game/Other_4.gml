if instance_exists(global.player_start_position){
	
	if instance_exists(o_player) {
		o_player.persistent = false;
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		o_player.layer = layer_get_id("Instances");
	}
	global.player_start_position = noone;
}