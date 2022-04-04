/// @description Insert description here
// You can write your code in this editor

music = [mus_1, mus_2, mus_3];
vol = 0.005;

index = 0;

alarm_set(0, 20);

sg = audio_create_sync_group(true);
audio_play_in_sync_group(sg, mus_1);
audio_sound_gain(mus_1, vol, 0)
audio_play_in_sync_group(sg, mus_2);
audio_sound_gain(mus_2, 0, 0);
audio_play_in_sync_group(sg, mus_3);
audio_sound_gain(mus_3, 0, 0);

audio_start_sync_group(sg); 

isPlayingNotification = false;
isPlayingTypewriter = false;
isPlayingphoneLongHash = false;
isPlayingphone = false;
audio_sound_gain(typeWriter1,0.02,0)
audio_sound_gain(notification1, 0.01, 0);
audio_sound_gain(phonelongHash, 0.01, 0);
audio_sound_gain(ringingtone, 0.001, 0);