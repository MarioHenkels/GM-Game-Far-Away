//Capturar o Input do player
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = keyboard_check_pressed(vk_space);

//Calcular movimento
var moveX = key_right - key_left;

var moveY = key_down - key_up;

switch(moveX) {
    case 1:
    motion_add(0, accel);
    break;
    case -1:
    motion_add(180, accel);
    break;
}
if(hspeed > flightSpeed){
    hspeed = flightSpeed;
} else if (hspeed < -flightSpeed) {
    hspeed = -flightSpeed
}

switch(moveY) {
    case 1:
    motion_add(270, accel);
    break;
    case -1:
    motion_add(90, accel);
    break;
}
if(vspeed > flightSpeed){
    vspeed = flightSpeed;
} else if (vspeed < -flightSpeed) {
    vspeed = -flightSpeed
}


//Rotação
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;