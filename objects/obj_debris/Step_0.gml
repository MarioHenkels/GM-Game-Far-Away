
if(!global.pause){
	image_angle += spinSpd * spinDir;
	image_alpha -= falloff;
	speed = moveSpd;
}else{
	speed = 0;
}

if(image_alpha <= 0) {
	instance_destroy();
}