
if(!spawnFinished){
	
	switch bodyPartNum {

		case 0:
			sprite_index = spr_caterpillar_head;
			var newBodyPart = instance_create_layer(x, y, "PassiveMobs", obj_caterpillar);
			newBodyPart.bodyPartNum = 1;
			newBodyPart.parentBodyPart = instance_id;
			spawnFinished = true;
			break;
			
		case 1:
			sprite_index = spr_caterpillar_b1;
			var newBodyPart = instance_create_layer(x, y, "PassiveMobs", obj_caterpillar);
			newBodyPart.bodyPartNum = 2;
			newBodyPart.parentBodyPart = instance_id;
			spawnFinished = true;
			break;
		
		case 2:
			sprite_index = spr_caterpillar_b1;
			var newBodyPart = instance_create_layer(x, y, "PassiveMobs", obj_caterpillar);
			newBodyPart.bodyPartNum = 3;
			newBodyPart.parentBodyPart = instance_id;
			spawnFinished = true;
			break;
		
		case 3:
			sprite_index = spr_caterpillar_b1;
			var newBodyPart = instance_create_layer(x, y, "PassiveMobs", obj_caterpillar);
			newBodyPart.bodyPartNum = 4;
			newBodyPart.parentBodyPart = instance_id;
			spawnFinished = true;
			break;
			
		case 4:
			sprite_index = spr_caterpillar_b1;
			var newBodyPart = instance_create_layer(x, y, "PassiveMobs", obj_caterpillar);
			newBodyPart.bodyPartNum = 5;
			newBodyPart.parentBodyPart = instance_id;
			spawnFinished = true;
			break;
	}
}
