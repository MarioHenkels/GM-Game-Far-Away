
sprSize = choose(sizes.sm, sizes.md, sizes.lg);
sprColor = choose(colors.grey, colors.blue, colors.red);
prevSprColor = sprColor;
prevSprSize = sprSize;

sprite_index = getRockSpriteBySize(sprSize);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = random_range(0.3, 2.5);

spinSpd = random_range(0, 4);
spinDir = choose(1, -1);

