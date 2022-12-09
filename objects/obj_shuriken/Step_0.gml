
if(!global.pause){
	image_angle += spinSpd * spinDir;
	speed = moveSpd;
	
	var trail = instance_create_layer(x, y, "Effects", obj_debris);
	trail.falloff = 0.03;
	trail.sprColor = sprColor;
	trail.moveSpd = 0;
	trail.direction = image_angle;
} else {
	speed = 0;
}

move_wrap(true, true, sprite_width/2);