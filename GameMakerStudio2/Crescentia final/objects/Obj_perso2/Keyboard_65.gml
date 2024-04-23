/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C478D86
/// @DnDArgument : "var" "phy_angular_velocity"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "-vitesse_angulaire_max"
if(phy_angular_velocity > -vitesse_angulaire_max)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2F62B80C
	/// @DnDParent : 3C478D86
	/// @DnDArgument : "code" "physics_apply_angular_impulse(-force_rotation)"
	physics_apply_angular_impulse(-force_rotation)
}