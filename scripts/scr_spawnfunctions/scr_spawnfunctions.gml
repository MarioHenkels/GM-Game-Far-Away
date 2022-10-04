
///@function						spawnRandomlyBorders(object, quantity, layer)
///@param {obj} object				O objeto a ser spawnado
///@param {int} quantity			Quantos deste objeto devem ser spawnados
///@param {string} layer			O Layer onde o objeto será colocado

function spawnRandomlyBorders(object, quantity, layer){
	var padding = 10;
	
	repeat(quantity){
		if(choose(true,false)){
			//sides
			var xx = choose(-padding, room_width + padding);
			var yy = irandom_range(0, room_height);
		} else {
			//top/bottom
			var xx = irandom_range(0, room_width);	
			var yy = choose(-padding, room_height + padding);
		}

		var newInstance = instance_create_layer(xx, yy, layer, object)
		ds_list_add(global.allEnemies, newInstance);
	}
}

///@function						spawnRandomly(object, quantity, layer)
///@param {obj} object				O objeto a ser spawnado
///@param {int} quantity			Quantos deste objeto devem ser spawnados
///@param {string} layer			O Layer onde o objeto será colocado

function spawnRandomly(object, quantity, layer){
	
	repeat(quantity){
	
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
	
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);

		var newInstance = instance_create_layer(xx, yy, layer, object)
		ds_list_add(global.allEnemies, newInstance);
	}
}

///@function						getRockSprBySizeAndColor(size)
///@param {int} size				O tamanho da rock a ser spawnada (0 small, 1 medium, 2 large)
///@param {int} color				A cor da rock a ser spawnada (0 grey, 1 blue, 2 red)
///@return {sprite} sprite_index	O Sprite a ser retornado

function getRockSprBySizeAndColor(size, color) {

	switch(size){
		case 0: //small
			switch(color){
				case 0: //grey
					return spr_rock_sm_grey;
					break;
				case 1: //blue
					return spr_rock_sm_blue;
					break;
				case 2: //red
					return spr_rock_sm_red;
					break;
			}
			break;
		case 1: //medium
			switch(color){
				case 0: //grey
					return spr_rock_md_grey;
					break;
				case 1: //blue
					return spr_rock_md_blue;
					break;
				case 2: //red
					return spr_rock_md_red;
					break;
			}
			break;
		case 2: //large
			switch(color){
				case 0: //grey
					return spr_rock_lg_grey;
					break;
				case 1: //blue
					return spr_rock_lg_blue;
					break;
				case 2: //red
					return spr_rock_lg_red;
					break;
			}
			break;
	}
}