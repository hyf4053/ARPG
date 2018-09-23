/// @description Move State
//Step 类似 Unity中的 Update 每一帧都会执行的内容
image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
_x_input_line = o_input.right_ - o_input.left_;
_y_input_line = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0,0,_x_input,_y_input);
var _attack_input = o_input.action_one_pressed_;
var _evade_input = o_input.action_two_pressed_;
rool_direction_ = direction_facing_*90;

if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}else{
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction,acceleration_,max_speed_);
	roll_direction_ = direction_facing_*90;
}

if _attack_input == true {
	image_index	= 0;
	state_ = player.sword;
}

if _evade_input == true {
	image_index = 0;
	state_ = player.evade;
}

move_movement_entity(false);


/*人物基础控制，和最简单的碰撞检测*/
/*
if _x_input != 0 && !place_meeting(x+speed_*_x_input, y, o_solid){
	x += speed_*_x_input;
	image_speed = _animation_speed;
	image_xscale = _x_input;
}

if _y_input !=0 && !place_meeting(x, y+speed_*_y_input, o_solid){
	y += speed_*_y_input;
	image_speed = _animation_speed;
}
*/