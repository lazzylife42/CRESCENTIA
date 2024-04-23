
// Gestion croissance plante
var exp_plante = global.plante_exp
var lvl_plante = global.plante_lvl

if exp_plante >= (10+lvl_plante*10){
	lvl_plante += 1
	global.plante_lvl = lvl_plante
	global.plante_exp = 0
	global.flag_plante_lvl_up = true
}

// Gestion xp joueur
var exp_joueur = global.joueur_exp
var lvl_joueur = global.joueur_lvl

if exp_joueur >= (20+lvl_joueur *10){
	lvl_joueur	+= 1
	global.joueur_lvl = lvl_joueur
	global.joueur_exp = 0
	global.flag_joueur_lvl_up = true
}

