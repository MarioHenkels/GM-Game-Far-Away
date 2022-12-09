
if(!global.pause){
	speed = 3;
	
	var trail = instance_create_layer(x, y, "Effects", obj_debris);
	trail.falloff = 0.1;
	trail.sprColor = sprColor;
	trail.moveSpd = 0;
	trail.direction = image_angle;
}else{
	speed = 0;
}

