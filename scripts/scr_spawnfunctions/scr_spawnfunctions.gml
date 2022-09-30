
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

		instance_create_layer(xx, yy, layer, object);
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

		instance_create_layer(xx, yy, layer, object)
	}
}