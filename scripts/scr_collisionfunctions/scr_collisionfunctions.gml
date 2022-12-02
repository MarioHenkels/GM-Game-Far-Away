
///@function							handleCollisionBulletEnemy()

function handleCollisionBulletEnemy() {
	
	switch(sprSize){
		
		case sizes.sm: //small
			switch(sprColor){
				case colors.grey: //grey
					score += 11;
					break;
					
				case colors.blue: //blue
					score += 10;
					global.currentCounterNum += global.mdEnemyCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.mdEnemyCounterVal;
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
					global.currentCounterNum += global.mdEnemyCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.mdEnemyCounterVal;
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
					global.currentCounterNum += global.lgEnemyCounterVal;
					break;
				
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.lgEnemyCounterVal;
					break;
			}
			break;
	}
	instance_destroy();
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
					global.currentCounterNum += global.smEnemyCounterVal;
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.smEnemyCounterVal;
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
					global.currentCounterNum += global.mdEnemyCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.sm;
						newRock.sprite_index = spr_rock_sm;
					}
					break;
					
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.mdEnemyCounterVal;
				
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
					global.currentCounterNum += global.lgEnemyCounterVal;
				
					repeat(2) {
						var newRock = instance_create_layer(x, y, "Enemies", obj_rock);
						newRock.sprColor = sprColor;
						newRock.sprSize = sizes.md;
						newRock.sprite_index = spr_rock_md;
					}
					break;
				
				case colors.red: //red
					score += 10;
					global.currentCounterNum -= global.lgEnemyCounterVal;
				
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