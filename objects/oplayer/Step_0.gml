//get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = keyboard_check_pressed(vk_space);

//calculate movement
var moveX = key_right - key_left;

var moveY = key_down - key_up;

hsp = moveX * walkspeed;
vsp = moveY * walkspeed;

//horizontal collision
if(place_meeting(x+hsp, y, oWall)){
    
    while(!place_meeting(x+sign(hsp), y, oWall)){
        x += sign(hsp);
    }
    hsp = 0;
}
//vertical collision
if(place_meeting(x, y+vsp, oWall)){
    
    while(!place_meeting(x, y + sign(vsp), oWall)){
        y += sign(vsp);
    }
    vsp = 0;
}


x += hsp;
y += vsp;


