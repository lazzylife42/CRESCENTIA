//Contraint l'objet aux rotations uniquement
var mainFixture, o_id, p_id, offset_tige;
mainFixture = physics_fixture_create();
physics_fixture_set_circle_shape(mainFixture, sprite_get_width(sprite_index)/2);

lastIndex = instance_number(Obj_plante)-1
p_id = instance_find(Obj_plante,lastIndex);

o_id = instance_create_layer(p_id.phy_com_x, p_id.phy_com_y , "Instances", Obj_plante, {
    phy_rotation : p_id.phy_rotation});

radd = degtorad(p_id.phy_rotation)
o_id.x += Obj_plante.sprite_height * sin(radd);
o_id.y += Obj_plante.sprite_height * cos(radd);

physics_fixture_bind(mainFixture, p_id);
physics_fixture_bind(mainFixture, o_id);
physics_joint_revolute_create(p_id, o_id, o_id.x,  o_id.y, -0.1, 0.1, true, 0, 0, 0, 0);

physics_joint_delete(global.id_join)
instance_destroy(global.fleur)

offset_tige = sprite_get_height(object_get_sprite(Obj_plante));

global.fleur = instance_create_layer(o_id.x, o_id.y, "Instances", Obj_plante_fleur);

physics_fixture_bind(mainFixture, global.fleur);
global.id_join = physics_joint_rope_create(o_id, global.fleur, o_id.x, o_id.y, o_id.x, o_id.y, 0, 0)

//global.id_join = physics_joint_revolute_create(o_id, global.fleur, global.fleur.x, global.fleur.y, 0, 0, false, 0, 0, 0, 0);

physics_fixture_delete(mainFixture);