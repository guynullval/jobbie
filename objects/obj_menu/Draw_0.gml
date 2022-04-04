/// @description Insert description here
// You can write your code in this editor
if(mouse_x > centerx -50 and mouse_x < centerx + 50) {
	if(mouse_y > 60 and mouse_y < 120) {
		col = c_ltgray;
		textCol= c_white;
		outline = true;
	} else {
	col = c_gray;
	textCol = c_black;
	outline = false;
	}
} else {
	col = c_gray;
	textCol = c_black;
	
	outline = false;
}
draw_set_color(col);
draw_rectangle(centerx -50, 60, centerx + 50, 120, outline );
draw_set_color(textCol);
draw_text(centerx - 30, 80, "start");
