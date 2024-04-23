// verticale speed à la surface de la terre ( Gravity ) 
dist_terre_x = x - Obj_perso2.x;
dist_terre_y = y - Obj_perso2.y;
dist_terre = sqrt(sqr(dist_terre_x) + sqr(dist_terre_y))
dx = dist_terre_x / dist_terre
dy = dist_terre_y / dist_terre

physics_apply_force(x, y, -dx*gravity_val, -dy*gravity_val)

// horizontale speed 
vitesse_normale = dot_product(phy_linear_velocity_x, phy_linear_velocity_y, dist_terre_x, dist_terre_y)

if vitesse_normale < lim_vitesse_normale{
		physics_apply_force(x, y, dy*force_normale, -dx*force_normale)
}

if ennemi_health <= 0{
	global.joueur_exp += 1
	global.plante_exp += 1
	global.N_ennemi -= 1
	instance_destroy(self)
}