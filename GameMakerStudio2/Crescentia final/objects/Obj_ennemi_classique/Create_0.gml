gravity_val = global.ennemi_gravity
gravity_val *= 0.8
ennemi_health = global.ennemi_health
lim_vitesse_normale = global.ennemi_max_hor_speed

force_normale = 0
vitesse_normale = 0

sens = choose(-1, 1);
force_normale = 200 * sens
