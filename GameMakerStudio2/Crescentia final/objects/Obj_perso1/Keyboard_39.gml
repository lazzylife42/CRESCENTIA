/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13E2C9A2
/// @DnDArgument : "code" "vitesse_direction = dot_product(phy_linear_velocity_x, phy_linear_velocity_y, -dist_terre_y, dist_terre_x)$(13_10)$(13_10)if ( vitesse_direction < lim_vitesse_direction ){$(13_10)	physics_apply_force(x, y, -dy*force_normal, dx*force_normal)}$(13_10)"
vitesse_direction = dot_product(phy_linear_velocity_x, phy_linear_velocity_y, -dist_terre_y, dist_terre_x)

if ( vitesse_direction < lim_vitesse_direction ){
	physics_apply_force(x, y, -dy*force_normal, dx*force_normal)}