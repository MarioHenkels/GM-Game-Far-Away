
image_angle += spinSpd * spinDir;

if(sprSize != prevSprSize || sprColor != prevSprColor){
	sprite_index = getRockSprBySizeAndColor(sprSize, sprColor);	
}

prevSprColor = sprColor;
prevSprSize = sprSize;

move_wrap(true, true, sprite_width/2);

