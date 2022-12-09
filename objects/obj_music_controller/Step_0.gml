
f1 = keyboard_check_pressed(vk_f1);
f2 = keyboard_check_pressed(vk_f2);
f3 = keyboard_check_pressed(vk_f3);
f4 = keyboard_check_pressed(vk_f4);

if(f1) { //increase intensity
musicIncreaseIntensity();
}

if(f2) { //lower intensity
musicLowerIntensity();
}

if(f3) { //go turbo
musicGoTurbo();
}

if(f4) { //from turbo to low
musicBackFromTurbo();
}

if(oldPause != global.pause){
	
	if(global.pause){
		audio_sound_gain(global.currentMusic, 0.5, 500);
	}else{
		audio_sound_gain(global.currentMusic, 1, 500);
	}
	
	oldPause = global.pause;
}

