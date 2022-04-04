/// @description Insert description here
// You can write your code in this editor
if(vol >= 0.025 and vol < 0.04) {
	index = 1;	
	audio_sound_gain(music[0], 0, 0)
} if(vol >= 0.04) {
	index = 2;
	audio_sound_gain(music[1], 0, 0)
	alarm_set(0, -1)
}
audio_sound_gain(music[index], vol, 0)

if(irandom_range(0,1)) {
	switch(irandom_range(1,4)) {
		case 1: 
		if(!isPlayingNotification) {
			alarm[1] = 20;
			isPlayingNotification = true;
		} break;
		case 2: 
		if(!isPlayingTypewriter) {
			alarm[2] = 20;
			isPlayingTypewriter = true;
		} break;
		case 3: 
		if(!isPlayingphoneLongHash) {
			alarm[3] = 20;
			isPlayingphoneLongHash = true;
		} break;
		case 4: 
		if(!isPlayingphone) {
			alarm[4] = 20;
			isPlayingphone = true;
		} break;
	}
}

if(!audio_is_playing(notification1)) {
	isPlayingNotification = false;	
}
if(!audio_is_playing(phonelongHash)) {
	isPlayingphoneLongHash = false;	
}
if(!audio_is_playing(ringingtone)) {
	isPlayingphone = false;	
}
if(!audio_is_playing(typeWriter1)) {
	isPlayingTypewriter = false;	
}