
if(!global.pause){
	image_speed = 0.25;
}else{
	image_speed = 0;
}

switch(btype){
	case 0:
		if(!global.pause){
			speed = global.projectileSpeedFast;
			
			var trail = instance_create_layer(x, y, "Effects", obj_debris);
			trail.falloff = 0.1;
			trail.sprColor = sprColor;
			trail.moveSpd = 0;
			trail.direction = image_angle;
		}else{
			speed = 0;
		}
		break;
	case 1:
		if(!global.pause){
			speed = global.projectileSpeed;
			image_alpha -= 0.03;	
			
			var trail = instance_create_layer(x, y, "Effects", obj_debris);
			trail.falloff = 0.1;
			trail.sprColor = sprColor;
			trail.moveSpd = 0;
			trail.direction = image_angle;
		}else{
			speed = 0;
		}
		break;
}
