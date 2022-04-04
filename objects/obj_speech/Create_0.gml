/// @description Insert description here
// You can write your code in this editor
speech = ["DIDYA FUCK MY DAMN WIFE?!?!",
		  "DIDYA WATCH THE GAME LAST NIGHT?"
		  ]



good = irandom_range(0,1);

text_last = 1;
text_width = 200;
text_x = x - sprite_width/2 + 20;
text_y = y - sprite_height/2 + 10;

buttonYesX = x - sprite_width/2 +20;
buttonYesY = y + sprite_height/2 +10
buttonNoX = x + sprite_width/2 -20;
buttonNoY = y + sprite_height/2 +10

char_current = 1;
char_speed = 0.25;

speech[good] = string_wrap(speech[good], text_width)

buttons[0] = instance_create_layer(buttonNoX, buttonNoY, "speechbubble", obj_yayNayButton);

buttons[1] = instance_create_layer(buttonYesX, buttonYesY, "speechbubble", obj_yayNayButton);

buttons[0].image_index = 0;
buttons[1].image_index = 1;