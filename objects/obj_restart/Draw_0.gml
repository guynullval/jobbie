/// @description Insert description here
// You can write your code in this editor
if(mouse_x > centerx -50 and mouse_x < centerx + 50) {
	if(mouse_y > bottomy2 and mouse_y < bottomy) {
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
draw_rectangle(centerx -60, bottomy2, centerx + 60, bottomy, outline );
draw_set_color(textCol);
draw_text(centerx - 50, room_height - 90, "get rehired");
