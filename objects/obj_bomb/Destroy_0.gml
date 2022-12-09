
if(!global.restarting){

	audio_play_sound(sfx_damage1, 3, false);

	var newSpike = instance_create_layer(x, y, "Enemies", obj_spike);
	newSpike.direction = image_angle;
	newSpike.image_angle = image_angle;
	newSpike.sprColor = sprColor;

	newSpike = instance_create_layer(x, y, "Enemies", obj_spike);
	newSpike.direction = image_angle - 45;
	newSpike.image_angle = image_angle - 45;
	newSpike.sprColor = sprColor;

	newSpike = instance_create_layer(x, y, "Enemies", obj_spike);
	newSpike.direction = image_angle + 45;
	newSpike.image_angle = image_angle + 45;
	newSpike.sprColor = sprColor;

	newSpike = instance_create_layer(x, y, "Enemies", obj_spike);
	newSpike.direction = image_angle - 90;
	newSpike.image_angle = image_angle - 90;
	newSpike.sprColor = sprColor;

	newSpike = instance_create_layer(x, y, "Enemies", obj_spike);
	newSpike.direction = image_angle + 90;
	newSpike.image_angle = image_angle + 90;
	newSpike.sprColor = sprColor;

	repeat (20) {
		var newDebris = instance_create_layer(x, y, "Effects", obj_debris);
		newDebris.sprColor = sprColor;
	}
}