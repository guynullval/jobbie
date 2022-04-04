/// @description Insert description here
// You can write your code in this editor

if(image_xscale == imgxOrigScale) {
	 image_xscale += 2;
	 image_yscale += 2;
	 image_alpha = 0.2;
} else {
	image_xscale = imgxOrigScale;
	image_yscale = imgyOrigScale;
	image_alpha = 0.1;
	
}
alarm_set(0, 5);