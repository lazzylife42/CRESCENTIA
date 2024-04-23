if !place_meeting(x, y, Obj_soleil) && (global.plante_exp >= 0){
		if flag_out = true{
			alarm_set(1, 200)
			flag_out = false
	}
}
else if place_meeting(x, y, Obj_soleil){
	alarm_set(1, -1)
	flag_out = true
	global.plante_exp += 1;	
}
alarm_set(0, 30)

