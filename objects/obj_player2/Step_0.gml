//Capturar o Input do player
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = mouse_check_button(mb_left) || keyboard_check_pressed(vk_space);

//Calcular movimento
var moveX = key_right - key_left;

var moveY = key_down - key_up;

if(key_shoot) {
	var bullet = instance_create_layer(x, y, "Bullets", bulletObj);
	bullet.direction = image_angle + 90;
}

handlePlayerMovement(moveX, moveY, accel, flightSpd);

var trail = instance_create_layer(x, y, "Player", obj_debris);
trail.speed = 0;
trail.direction = image_angle + 90;

//Rotação
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

//Faz o Objeto permanescer na tela
move_wrap(true, true, sprite_width/2);