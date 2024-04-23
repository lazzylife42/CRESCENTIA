

var rand_x1 = irandom_range(room_width*0.1, Obj_perso2.x - Obj_perso2.sprite_width/2 + 32); // Position aléatoire en x
var rand_x2 = irandom_range(Obj_perso2.x +  Obj_perso2.sprite_width/2 + 32, room_width*0.9);
var rand_x = choose(rand_x1, rand_x2)
var rand_y1 = irandom_range(room_height*0.1, Obj_perso2.y - Obj_perso2.sprite_height/2 - 32); // Position aléatoire en x
var rand_y2 = irandom_range(Obj_perso2.y +  Obj_perso2.sprite_width/2 + 32, room_width*0.9);
var rand_y = choose(rand_y1, rand_y2)

//var random_y = irandom_range(room_height * 0.1, room_height * 0.9); // Position aléatoire en y

switch(current_wave){
	case 0 :
		WaveObj = Obj_ennemi_classique
		
	case 1 :
		WaveObj = Obj_ennemi_fast
		
	case 2 :
		WaveObj = Obj_ennemi_slow
		
	case 3 :
		if WaveObj = Obj_ennemi_slow{
			WaveObj = Obj_ennemi_fast
		}
		else{
			WaveObj = Obj_ennemi_slow	
		}
		
	case 4 :
		if WaveObj = Obj_ennemi_slow{
			WaveObj = Obj_ennemi_fast
		}
		else if WaveObj = Obj_ennemi_fast{
			WaveObj = Obj_ennemi_classique	
		}
		else{
			WaveObj = Obj_ennemi_slow
		}
		
}

instance_create_layer(rand_x, rand_y, "Instances", WaveObj)

ennemy_sent += 1;
global.N_ennemi += 1

if ennemy_sent >= global.vagues_number[current_wave]{
	current_wave += 1;
	global.vague = current_wave
	ennemy_sent = 0;
	alarm_set(5, delai_waves);

}
else{
	alarm_set(5, delai_ennemies);
}
