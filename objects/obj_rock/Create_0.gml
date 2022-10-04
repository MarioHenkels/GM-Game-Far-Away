
sprSize = choose(0, 1, 2);
sprColor = choose(0, 1, 2);

sprite_index = getRockSprBySizeAndColor(sprSize, sprColor);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = random_range(0, 3);

spinSpd = random_range(0, 5);
spinDir = choose(1, -1);

