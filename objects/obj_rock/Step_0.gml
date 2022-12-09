
if(!global.pause){
	image_angle += spinSpd * spinDir;
	speed = moveSpd;
} else {
	speed = 0;
}

prevSprColor = sprColor;
prevSprSize = sprSize;

move_wrap(true, true, sprite_width/2);

