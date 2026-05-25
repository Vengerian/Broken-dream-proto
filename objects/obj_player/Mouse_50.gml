if (can_shoot)
{ x_spawn = lengthdir_x(40, dir_to_mouse); 
y_spawn = lengthdir_y(40, dir_to_mouse); 
inst = instance_create_depth(x+x_spawn,y+y_spawn-72,-10, 
obj_player_bullet); 
inst.direction = point_direction(x+x_spawn,y+y_spawn-72, mouse_x, 
mouse_y);  
inst.image_angle = inst.direction; 
inst.speed = 17;
can_shoot = false;
alarm[0] = shoot_delay;
}
