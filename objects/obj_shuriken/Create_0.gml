
sprSize = sizes.sm;
sprColor = choose(colors.grey, colors.blue, colors.red);

moveSpd = random_range(2, 4);

direction = irandom_range(0, 359);
image_angle = direction;
speed = moveSpd;

spinSpd = 7;
spinDir = choose(1, -1);