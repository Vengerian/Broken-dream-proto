//проверяем нажата ли А? 
a = keyboard_check(ord("A"));  
//проверяем нажата ли D? 
d = keyboard_check(ord("D")); 
//проверяем нажат ли пробел? 
space = keyboard_check(vk_space);

// вычисляем горизонтальную скорость 
hspd = (d - a) * player_move_speed; 

// если горизонтальная скорость равна 0 
if (hspd == 0){ 
// то ставим спрайт покоя 
sprite_index = spr_player_idle 
} else { 
// иначе ставим спрайт бега 
sprite_index = spr_player_run 
}

// если под ногами есть obj_wall (земля) 
if (place_meeting(x,y + 2,obj_wall)){  
// если нажали на пробел 
if (space){ 
// вертикальная скорость станет отрицательной 
// то есть игрок полетит вверх 
vspd = player_jump_speed;   
}
} 
else { 
// иначе если нет под ногами земли, то вертикальная 
// скорость увеличивается (полетит вниз) 
vspd += player_gravity; 
// ставим спрайт прыжка 
sprite_index = spr_player_jump
} 
// Передвигаем игрока  
move_and_collide(hspd, vspd, obj_wall, 4, 
0, 0, player_move_speed, player_jump_speed)
// если координата по х мыши не равна  
if (x != mouse_x){ 
// то зеркалим игрока в нужную сторону 
image_xscale = sign(mouse_x - x)  
}
