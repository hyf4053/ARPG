/// @description Sword State
image_speed = .8;

set_movement(direction_facing_*90,1);
move_movement_entity(false);

if animation_hit_frame(image_number-1) {
	state_ = player.move;
}
