/// @description Insert description here
// You can write your code in this editor
//fucked = false;
//gg = false;

text = ["fired for fucking your boss wife",
		"fired for not fraternising with the boss enough",
		"fired just because you're a bad typer"]
text_current = 0;
text_last = 2;
text_width = 400;
text_x = room_width / 2 - 100;
text_y = room_height / 2;


char_current = 1;
char_speed = 0.25;
//text_current = 2;

text[0] = string_wrap(text[0], text_width);
text[1] = string_wrap(text[1], text_width)
text[2] = string_wrap(text[2], text_width)