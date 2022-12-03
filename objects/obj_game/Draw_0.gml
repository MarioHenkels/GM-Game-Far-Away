
switch(room){
    case rm_game:

        draw_text_transformed(90, 20, "PONTUACAO: " + string(score), 1.2, 1.2, 1);
        draw_text_transformed(60, 40, "VIDAS: " + string(lives), 1.2, 1.2, 1);
		
		draw_text_transformed(90, 60, "INIMIGOS: " + string(global.enemyCount), 1.2, 1.2, 1);
		
		var c;
		if(global.currentCounterNum >= 0){
			c = c_aqua;
		} else {
			c = c_red;
		}
		
		draw_text_ext_transformed_color(room_width/2 - 70, 30,
			string(global.currentCounterNum), 10, 400, 2, 2, 0,c,c,c,c,1);
			
		draw_text_ext_transformed(room_width/2, 30,
			"/", 10, 400, 2, 2, 0);
		
		draw_text_ext_transformed(room_width/2 + 50, 30,
			string(global.targetCounterNum), 10, 400, 2, 2, 0);

        break;
    case rm_start:

		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		
        var c = c_yellow;
        draw_text_transformed_color(
             room_width/2, 100, "FAR/AWAY", 5, 5, 0, c, c, c, c, 1
        );
		
		draw_text(
			room_width/2, room_height/2,
			@"Score 1,000 points to win!

do it...
DO IT!!! 

>> PRESS ENTER TO START <<

> PRESS ESC TO EXIT <
"
		)

        break;
    case rm_win:

		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		
        var c = c_green;
        draw_text_transformed_color(
             room_width/2, room_height/2, "VICTORY!!", 5, 5, 0, c, c, c, c, 1
        );
		
		draw_text(
			room_width/2, room_height/2 + 100,
			">> PRESS ENTER TO RESTART <<"
		)

        break;
    case rm_gameover:

		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		
        var c = c_red;
        draw_text_transformed_color(
             room_width/2, room_height/2 - 100, "GAME/OVER", 5, 5, 0, c, c, c, c, 1
        );
		
		draw_text(
			room_width/2, room_height/2,
			"FINAL SCORE: " + string(score)
		)
		
		draw_text(
			room_width/2, room_height/2 + 100,
			">> PRESS ENTER TO RESTART <<"
		)

        break;
}
