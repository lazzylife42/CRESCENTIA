draw_set_font(Font1)

draw_text(15, 40, "Player 1 "+ string(Obj_perso1.player_health));
draw_text(15, 80, "Croissance : "+ string(global.plante_exp));

draw_text(room_width-150, 40, "Vague : "+ string(global.vague));
draw_text(room_width-150, 80, "Ennemis : "+ string(global.N_ennemi));
