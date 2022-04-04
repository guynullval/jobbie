/// @description Insert description here
// You can write your code in this 

//if(!ds_stack_empty(input_stack)) {
//	//if(keyboard_check()
//}
if(!lost) {
	keypressed = string_lower(chr(keyboard_key));

	//ind = ds_list_find_index(listOfLetters, ord(keypressed))
	//if(ind != -1) {
	//if(keyboard_key != 0 and !pressed) {
	//	pressed = true;
	//}
	if(keyboard_key != 0 and keyboard_check_pressed(ord(string_upper(keypressed)))) {
		if(keypressed == ds_queue_head(input_stack)) {
			ds_queue_dequeue(input_stack);
			var obj = ds_queue_dequeue(obj_stack);
			instance_destroy(obj);
			letterCounter++;
		}
		else if(keypressed != ds_queue_head(input_stack)) {
			wrongInput += 5;
			alphaCounter = 1;
		}
		//pressed = false;
	}

	if(letterCounter == 5) {
		if(timerFactor > 50) {
			timerFactor -= 5;	
		}
	}
	layer_background_alpha(hurtBG, alphaCounter)
	if(alphaCounter != 0) {
		alphaCounter -= 0.1;	
	}
	if(guyReturn) {
		if(guy.x < guy.originX) {
			guy.x += 4;	
			if(guy.x == guy.originX) {
				guyReturn = false;	
				alarm_set(2, irandom_range(120, 240))
			}
		}
	}

	if(guyAlert) {
		if(guy.x > guy.destination) {
			guy.x -= 4;	
			if(guy.x == guy.destination) {
				guyAlert = false;
				guyReturn = false;
			}
		}
	}

	if(instance_exists(obj_speech)) {
		for(var i = 0; i <= 1; i++) {
			if(guy.speak.buttons[i].isclicked) {
				if(i == guy.speak.good) {
					guyReturn = true;
					instance_destroy(obj_speech);
					
					
				} else {
					//Lose
					lost = true;
					switch(i) {
						case 0:
							stat.fed = true;
							stat.gg = false;
							break;
						case 1:
							stat.fed = false;
							stat.gg = true;
							break;
					}
					break;
				}
			}
		}

	}
	if(wrongInput >= 30) {
		if(approval.image_index < approval.image_number-1) {
			approval.image_index += 1;	
			wrongInput = 0;
		}
	}
	if(approval.image_index == approval.image_number-1) { //may our lord and savior Shaun Spalding forgive this horrid code :(
		lost = true;
		stat.fed = false;
		stat.gg = false;
	}
} 
else { 
	alarm_set(3, 10);
	alarm_set(0, -1);
	alarm_set(1, -1);
	alarm_set(2, -1);
	alphaCounter += 0.1;
	layer_background_alpha(transition, alphaCounter);	
	if(alphaCounter >= 1) {
		room_goto(End);	
	}
}
//if(keyboard_check_released(ord(keypressed))) {
//	pressed = false;
//}
//if(ds_list_(keypressed)
