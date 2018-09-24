/// @description Draw Axis
draw_sprite(s_medium_shadow, 0, x, y);
draw_self();
draw_line(32,32,32+_x_input_line*32,32+_y_input_line*32);
draw_self_flash(c_white, 12, alarm[0]);
