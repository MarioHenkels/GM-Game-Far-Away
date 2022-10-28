var trail = instance_create_layer(x, y, "Effects", obj_debris);
trail.falloff = 0.1;
trail.sprColor = sprColor;
trail.speed = 0;
trail.direction = image_angle;
