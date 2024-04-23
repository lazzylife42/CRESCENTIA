// Vecteur normal à la surface de la terre
dist_terre_x = x - Obj_perso2.x;
dist_terre_y = y - Obj_perso2.y;
dist_terre = sqrt(sqr(dist_terre_x) + sqr(dist_terre_y))
dx = dist_terre_x / dist_terre
dy = dist_terre_y / dist_terre

physics_apply_force(x, y, -dx*gravity_val, -dy*gravity_val)

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", Obj_bullet);
}