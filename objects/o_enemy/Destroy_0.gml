create_animation_effect(s_enemy_death ,x ,y-8 ,.6 , true);
if change(0.75){
	var _item = choose(o_gem_pickup, o_heart_pickup);
	instance_create_layer(x, y-8, "Instances", _item);	
}