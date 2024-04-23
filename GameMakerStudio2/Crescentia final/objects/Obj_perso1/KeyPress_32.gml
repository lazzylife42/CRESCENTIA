dx = x - instance_find(Obj_perso2, 0).x;
dy = y - instance_find(Obj_perso2, 0).y;

if (physics_test_overlap(x, y, 0, Obj_perso2)) {
    onGround = true;
	physics_apply_force(x, y, dx*force_saut, dy*force_saut)
}