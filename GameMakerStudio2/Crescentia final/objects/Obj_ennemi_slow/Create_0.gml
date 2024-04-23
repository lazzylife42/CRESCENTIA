gravity_val = global.ennemi_gravity
gravity_val *= 0.4
ennemi_health = global.ennemi_health
ennemi_health += 3
lim_vitesse_normale = global.ennemi_max_hor_speed
lim_vitesse_normale /= 2

vitesse_normale = 0

sens = choose(-1, 1);
force_normale = 150 * sens