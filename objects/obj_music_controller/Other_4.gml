
if(room == rm_game) {
	
	global.mscLow = audio_play_sound(msc_battle1_low, 100, true);
	global.currentMusic = global.mscLow;
	
	global.mscMed = audio_play_sound(msc_battle1_med, 100, true);
	audio_sound_gain(global.mscMed, 0, 0);
	
	global.mscHigh = audio_play_sound(msc_battle1_high, 100, true);
	audio_sound_gain(global.mscHigh, 0, 0);
	
	global.mscTurbo = audio_play_sound(msc_battle1_turbo, 100, true);
	audio_sound_gain(global.mscTurbo, 0, 0);

}


