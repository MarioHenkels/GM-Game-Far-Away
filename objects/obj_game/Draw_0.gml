
switch(room){
    case rm_game:

        draw_text(20, 20, "SCORE: " + string(score));
        draw_text(20, 40, "LIVES: " + string(lives));

        break;
    case rm_start:

		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		
        var c = c_yellow;
        draw_text_transformed_color(
             room_width/2, 200, "FAR/AWAY", 5, 5, 0, c, c, c, c, 1
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
