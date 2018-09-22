//Create 类似 Unity中的 Start或者Awake 只在对象被创建时调用一次
initialize_movement_entity(.5, 1, o_solid);
//这个变量是对象内建的精灵动画速度，初始为0则表示无动画
image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;

//全局变量的定义方法
global.player_health = 4;

enum player{
	move,
	sword,
	evade
}

enum dir{
	right,
	up,
	left,
	down
}

state_ = player.move;

//sprite lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;


//sprite_index = sprite_[player.move, dir.right];



/*
enum item{
	sword,//0
	potion,//1
	spell,//2
	note//3
}

inventory_ [item.sword] = "sword";
inventory_ [item.potion] = "potion";
inventory_ [item.spell] = "spell";
inventory_ [item.note] = "note";

show_message(inventory_ [item.spell]);
*/