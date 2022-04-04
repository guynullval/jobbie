/// @description Insert description here
// You can write your code in this editor
//player = instance_create_layer(100, 100, "Instances", obj_player)

CellSize = 16;
Speed = 2;


input_stack = ds_queue_create();
obj_stack = ds_queue_create();

listOfObjects = ds_list_create();
listOfLetters = ds_list_create();

arrayOfLetters = ["q", "w", "e", "r", "t",
				 "a", "s", "d", "f", "g",
				 "z", "x", "c", "v", "b"]

//listOfLetters = ds_list_create()
for(var i = 0; i<array_length(arrayOfLetters); i++) {
	ds_list_add(listOfLetters, arrayOfLetters[i])
}
indexOfLetters = [16, 22, 4, 17, 19,
				  0,  18, 3,  5,  6,
				  25, 23, 2, 24, 1]
				  
wrongInput = 0;
alarmFont = alarm_get(0);



alphaCounter = 0.1;
hurtBgId = layer_get_id("hurtBg");
hurtBG = layer_background_get_id(hurtBgId);
layer_background_alpha(hurtBG, 0);

transitionID = layer_get_id("transition");
transition = layer_background_get_id(transitionID);
layer_background_alpha(transition, 0);

pressed = false;
letterSpawner = instance_nearest(x,y,obj_letterSpawner)
centerX = letterSpawner.x //room_width/2;
centerY = letterSpawner.y//room_height/2;

//objSpeech = ds_list_create();

timerFactor = 100
letterCounter = 0;
stat = instance_nearest(x,y, obj_status)
alarm_set(0, 100);
music = [mus_1, mus_2, mus_3]
guy = instance_nearest(x,y, obj_guy);
guyAlert = false;
guyReturn = false;
alarm_set(2, irandom_range(120, 300));

approval = instance_nearest(x,y, obj_aproval);


lost = false;