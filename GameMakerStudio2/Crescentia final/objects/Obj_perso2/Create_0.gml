//Contraint l'objet aux rotations uniquement
var mainFixture, o_id, p_id, offset_tige, offset_fleur, offset_terre;
mainFixture = physics_fixture_create();
physics_fixture_set_circle_shape(mainFixture, sprite_get_width(sprite_index) / 2);
o_id=instance_create_layer(id.x, id.y, "Instances", Obj_axe);
o_id.x = x;
o_id.y = y;

physics_fixture_bind(mainFixture, id);
physics_fixture_bind(mainFixture, o_id);
physics_joint_revolute_create(id, o_id,x,y, 0, 360, 0, 0, 0, 0, 0);
physics_fixture_delete(mainFixture);

offset_terre = sprite_get_width(sprite_index);
offset_tige = sprite_get_height(object_get_sprite(Obj_plante));
offset_fleur = sprite_get_width(object_get_sprite(Obj_plante_fleur2));
mainFixture = physics_fixture_create();
physics_fixture_set_circle_shape(mainFixture, sprite_get_width(sprite_index) / 2);

p_id = instance_create_layer(id.x, id.y-offset_terre, "Instances", Obj_plante);
global.fleur = instance_create_layer(x, y-offset_terre-offset_tige, "Instances", Obj_plante_fleur);


physics_fixture_bind(mainFixture, id);
physics_fixture_bind_ext(mainFixture, p_id, p_id.x, p_id.y-offset_tige);
physics_joint_revolute_create(id, p_id, p_id.x,  p_id.y, -1, 1, true, 0, 0, 0, 0);
physics_fixture_bind(mainFixture, global.fleur);
//global.id_join = physics_joint_revolute_create(o_id, global.fleur, global.fleur.x, global.fleur.y, -5, 5, false, 0, 0, 0, 0);
global.id_join = physics_joint_rope_create(p_id, global.fleur, p_id.x, p_id.y, p_id.x, p_id.y, 0, 0)

physics_fixture_delete(mainFixture);

//event_user(0)
//event_user(0)