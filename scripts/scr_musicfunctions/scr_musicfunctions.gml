
///@function					musicLowerIntensity()

function musicLowerIntensity() {
	
	switch(global.currentMusic){
	
		case global.mscMed:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscLow, 1, 500);
			global.currentMusic = global.mscLow;
			break;
			
		case global.mscHigh:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscMed, 1, 500);
			global.currentMusic = global.mscMed;
			break;
			
		case global.mscTurbo:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscHigh, 1, 500);
			global.currentMusic = global.mscHigh
			break;
	}
}

///@function					musicIncreaseIntensity()

function musicIncreaseIntensity() {
	
	switch(global.currentMusic){
	
		case global.mscLow:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscMed, 1, 500);
			global.currentMusic = global.mscMed;
			break;
			
		case global.mscMed:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscHigh, 1, 500);
			global.currentMusic = global.mscHigh;
			break;
			
		case global.mscHigh:
			audio_sound_gain(global.currentMusic, 0, 500);
			audio_sound_gain(global.mscTurbo, 1, 500);
			global.currentMusic = global.mscTurbo;
			break;
	}
}

///@function					musicGoTurbo()

function musicGoTurbo() {
	audio_sound_gain(global.currentMusic, 0, 500);
	audio_sound_gain(global.mscTurbo, 1, 500);
	global.currentMusic = global.mscTurbo;
}

///@function					musicBackFromTurbo()

function musicBackFromTurbo() {
	audio_sound_gain(global.currentMusic, 0, 500);
	audio_sound_gain(global.mscLow, 1, 500);
	global.currentMusic = global.mscLow;
}