
///@function							handleCollisionBulletEnemy()

function handleCollisionBulletEnemy() {
	instance_destroy();
	
	switch(sprSize){
		
		case sizes.sm: //small
			switch(sprColor){
				case colors.grey: //grey
					score += 11;
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.smRockCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.smRockCounterVal;
					break;
			}
			break;
			
		case sizes.md: //medium
			switch(sprColor){
				
				case colors.grey: //grey
					score += 11;
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.mdRockCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.mdRockCounterVal;
					break;
			}
			break;
				
		case sizes.lg: //large
			switch(sprColor){
				
				case colors.grey: //grey
					score += 11;
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.lgRockCounterVal;
					break;
				
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.lgRockCounterVal;
					break;
			}
			break;
	}
}

///@function							handleCollisionBulletRock()

function handleCollisionBulletRock(){
	
	instance_destroy();
	
	switch(sprSize){
		
		case sizes.sm: //small
			switch(sprColor){
				case colors.grey: //grey
					score += 11;
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.smRockCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.smRockCounterVal;
					break;
			}
			break;
			
		case sizes.md: //medium
			switch(sprColor){
				
				case colors.grey: //grey
					score += 11;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.sm;
						newRock.sprite_index = spr_rock_sm;
					}
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.mdRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.sm;
						newRock.sprite_index = spr_rock_sm;
					}
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.mdRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.sm;
						newRock.sprite_index = spr_rock_sm;
					}
					break;
			}
			break;
				
		case sizes.lg: //large
			switch(sprColor){
				
				case colors.grey: //grey
					score += 11;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = 0;
						newRock.sprSize = 1;
						newRock.sprite_index = spr_rock_md;
					}
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.lgRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.md;
						newRock.sprite_index = spr_rock_md;
					}
					break;
				
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.lgRockCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.md;
						newRock.sprite_index = spr_rock_md;
					}
					break;
			}
			break;
	}
}