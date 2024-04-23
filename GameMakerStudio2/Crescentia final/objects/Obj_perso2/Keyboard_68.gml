/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CA5810A
/// @DnDArgument : "var" "phy_angular_velocity"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "vitesse_angulaire_max"
if(phy_angular_velocity < vitesse_angulaire_max)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6B56BED3
	/// @DnDParent : 4CA5810A
	/// @DnDArgument : "code" "physics_apply_angular_impulse(force_rotation)"
	physics_apply_angular_impulse(force_rotation)
}