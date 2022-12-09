
if(room == rm_game) {
	
	audio_sound_gain(global.mscTheme, 0, 500);
	
	global.mscLow = audio_play_sound(msc_battle1_low, 100, true);
	audio_sound_gain(global.mscLow, 0, 0);
	audio_sound_gain(global.mscLow, 1, 500);
	global.currentMusic = global.mscLow;
	
	global.mscMed = audio_play_sound(msc_battle1_med, 100, true);
	audio_sound_gain(global.mscMed, 0, 0);
	
	global.mscHigh = audio_play_sound(msc_battle1_high, 100, true);
	audio_sound_gain(global.mscHigh, 0, 0);
	
	global.mscTurbo = audio_play_sound(msc_battle1_turbo, 100, true);
	audio_sound_gain(global.mscTurbo, 0, 0);

} else if (room == rm_start){

	audio_stop_all();
	
	global.mscTheme = audio_play_sound(msc_main_theme, 100, false);
	audio_sound_gain(global.mscTheme, 0, 0);
	audio_sound_gain(global.mscTheme, 1, 500);
	

} else if (room == rm_gameover){
	audio_sound_gain(global.currentMusic, 0.5, 500);
}