health_points = 100;
player_move_speed = 6; // cкорость движения
player_jump_speed = -8; // сила прыжка  
player_gravity = 0.2; // сила гравитации 
hspd = 0; // текущая вертикальная скорость 
vspd = 0; // текущая горизонтальная скорость
can_shoot = true; // может ли игрок стрелять 
shoot_delay = 20; // время задержки в кадрах 

dir_to_mouse = point_direction(x-20, y-68, mouse_x, mouse_y);
