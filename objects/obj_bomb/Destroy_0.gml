
var newSpike = instance_create_layer(x, y, "Rocks", obj_spike);
newSpike.direction = image_angle;
newSpike.image_angle = image_angle;
newSpike.sprColor = sprColor;

newSpike = instance_create_layer(x, y, "Rocks", obj_spike);
newSpike.direction = image_angle - 45;
newSpike.image_angle = image_angle - 45;
newSpike.sprColor = sprColor;

newSpike = instance_create_layer(x, y, "Rocks", obj_spike);
newSpike.direction = image_angle + 45;
newSpike.image_angle = image_angle + 45;
newSpike.sprColor = sprColor;

newSpike = instance_create_layer(x, y, "Rocks", obj_spike);
newSpike.direction = image_angle - 90;
newSpike.image_angle = image_angle - 90;
newSpike.sprColor = sprColor;

newSpike = instance_create_layer(x, y, "Rocks", obj_spike);
newSpike.direction = image_angle + 90;
newSpike.image_angle = image_angle + 90;
newSpike.sprColor = sprColor;


