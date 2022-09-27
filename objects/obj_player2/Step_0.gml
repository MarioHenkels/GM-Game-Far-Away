//Capturar o Input do player
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = mouse_check_button_pressed(mb_left)
			|| mouse_check_button_pressed(mb_right)
			|| keyboard_check(vk_space);

//Calcular movimento
var moveX = key_right - key_left;

var moveY = key_down - key_up;

if(key_shoot) {
	var bullet = instance_create_layer(x, y, "Bullets", bulletObj);
	bullet.direction = image_angle;
	bullet.image_angle = image_angle;
	audio_play_sound(sfx_shoot1, 3, false);
}

//Mudar sprite quando aperta R
if(keyboard_check_pressed(ord("R"))) {
	sprite_index = choose(spr_moth_blue, spr_moth_green, 
					spr_moth_orange, spr_moth_purple, 
					spr_moth_red);
}

handlePlayerMovement(moveX, moveY, accel, flightSpd);

var trail = instance_create_layer(x, y, "Player", obj_debris);
trail.speed = 0;
trail.direction = image_angle;

//Rotação
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Faz o Objeto permanescer na tela
move_wrap(true, true, sprite_width/2);