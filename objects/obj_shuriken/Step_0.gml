
image_angle += spinSpd * spinDir;

move_wrap(true, true, sprite_width/2);

var trail = instance_create_layer(x, y, "Effects", obj_debris);
trail.falloff = 0.03;
trail.sprColor = sprColor;
trail.speed = 0;
trail.direction = image_angle;