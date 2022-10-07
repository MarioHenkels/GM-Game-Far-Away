
///@function							getAllInstancesByLayer(layerId)
///@param {layer_id} layerId	O id ou nome do layer

function getAllInstancesByLayer(layerId) {
	
	var allElements = layer_get_all_elements(layerId);
	
	var allInstances = [];
	for(i = 0; i < array_length(allElements); i++){
		allInstances[i] = layer_instance_get_instance(allElements[i]);
	}
	return allInstances;
}

///@function					specialSwitchColor(layerId)
///@param {array} allEnemies	lista de todos os inimigos cuja cor mudará

function specialSwitchColor(allEnemies) {
	for(i = 0; i < array_length(allEnemies); i++){
		
		var enemy = allEnemies[i]
		
		switch(enemy.sprColor){
			case 1:
				enemy.sprColor = 2;
				break;
			case 2:
				enemy.sprColor = 1;
				break;
		}
	}

}