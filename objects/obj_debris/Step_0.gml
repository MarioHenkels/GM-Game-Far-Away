
image_angle += spinSpd * spinDir;

image_alpha -= falloff;
if(image_alpha <= 0) {
	instance_destroy();
}