function handleCollisionBulletRock(){
	
	idx = ds_list_find_index(global.allEnemies, instance_id);
	ds_list_delete(global.allEnemies, idx);
	
	instance_destroy();
	
	switch(sprSize){
		
		case 0: //small
			switch(sprColor){
				case 0: //grey
					score += 11;
					break;
					
				case 1: //blue
					score += 10;
					global.currentCounterNum += global.smRockCounterVal;
					break;
					
				case 2: //red
					score += 10;
					global.currentCounterNum -= global.smRockCounterVal;
					break;
			}
			break;
			
		case 1: //medium
			switch(sprColor){
				
				case 0: //grey
					score += 11;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 0;
						newRock.sprSize = 0;
						newRock.sprite_index = spr_rock_sm_grey;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
					
				case 1: //blue
					score += 10;
					global.currentCounterNum += global.mdRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 1;
						newRock.sprSize = 0;
						newRock.sprite_index = spr_rock_sm_blue;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
					
				case 2: //red
					score += 10;
					global.currentCounterNum -= global.mdRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 2;
						newRock.sprSize = 0;
						newRock.sprite_index = spr_rock_sm_red;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
			}
			break;
				
		case 2: //large
			switch(sprColor){
				
				case 0: //grey
					score += 11;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 0;
						newRock.sprSize = 1;
						newRock.sprite_index = spr_rock_md_grey;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
					
				case 1: //blue
					score += 10;
					global.currentCounterNum += global.lgRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 1;
						newRock.sprSize = 1;
						newRock.sprite_index = spr_rock_md_blue;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
					
				case 2: //red
					score += 10;
					global.currentCounterNum -= global.lgRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
						newRock.sprColor = 2;
						newRock.sprSize = 1;
						newRock.sprite_index = spr_rock_md_red;
						ds_list_add(global.allEnemies, newRock);
					}
					break;
			}
			break;
	}
	
	repeat (20) {
		instance_create_layer(x, y, "Rocks", obj_debris);
	}
}