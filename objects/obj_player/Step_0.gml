//Capturar o Input do player
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_special = keyboard_check_pressed(ord("R"));

key_shoot = mouse_check_button_pressed(mb_left)
			|| mouse_check_button_pressed(mb_right);
			
key_shoot_special = keyboard_check(vk_space);

//Calcular movimento
var moveX = key_right - key_left;

var moveY = key_down - key_up;

//Shoot
if(key_shoot && !global.pause) {
	var bullet = instance_create_layer(x, y, "Bullets", bulletObj);
	bullet.direction = image_angle;
	bullet.image_angle = image_angle;
	bullet.btype = 0;
	audio_play_sound(sfx_shoot1, 3, false);
}

if(key_shoot_special && !global.pause) {
	var bullet = instance_create_layer(x, y, "Bullets", bulletObj);
	bullet.direction = image_angle;
	bullet.image_angle = image_angle;
	bullet.btype = 1;
	var aud = audio_play_sound(sfx_shoot1, 3, false);
	audio_sound_gain(aud, 0.5, 0);
}

//Special
if(key_special && !global.pause){
	specialSwitchColor(getAllInstancesByLayer("Enemies"));
}

handlePlayerMovement(moveX, moveY, accel, flightSpd);

if(!global.pause){
	var trail = instance_create_layer(x, y, "Effects", obj_debris);
	trail.falloff = 0.03;
	trail.sprColor = sprColor;
	trail.moveSpd = 0;
	trail.direction = image_angle;
}

//Rotação
if(!global.pause){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

//Faz o Objeto permanescer na tela
move_wrap(true, true, sprite_width/2);