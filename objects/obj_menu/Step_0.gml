/// @description Insert description here
// You can write your code in this editor

if(mouse_x > centerx -50 and mouse_x < centerx + 50) {
	if(mouse_y > 60 and mouse_y < 120) {
		if(mouse_check_button_pressed(mb_left)) {
			room_goto_next();	
		}
	}	
}


