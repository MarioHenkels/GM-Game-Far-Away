//Capturar o Input do player
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = keyboard_check_pressed(vk_space);

//Calcular movimento
var moveX = key_right - key_left;

var moveY = key_down - key_up;

hsp = moveX * flightSpeed;
vsp = moveY * flightSpeed;

//Colisão Horizontal
if(place_meeting(x + hsp, y, obj_wall)){
    
    while(!place_meeting(x+sign(hsp), y, obj_wall)){
        x += sign(hsp);
    }
    hsp = 0;
}
//Colisão Vertical
if(place_meeting(x, y + vsp, obj_wall)){
    
    while(!place_meeting(x, y + sign(vsp), obj_wall)){
        y += sign(vsp);
    }
    vsp = 0;
}

//Passa o movimento para o Objeto em si
x += hsp;
y += vsp;

//Rotação
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;