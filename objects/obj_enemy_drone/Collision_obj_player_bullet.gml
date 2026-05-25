//отнимаем единицу здоровья 
enemy_health -= 1; 
// удаляем пулю 
instance_destroy(other)  
// если здоровье меньше нуля 
if (enemy_health <= 0){ 
instance_destroy(); // удаляем врага 
}
