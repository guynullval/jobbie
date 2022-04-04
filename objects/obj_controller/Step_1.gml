/// @description Insert description here
// You can write your code in this editor
//if(instance_exists(player)) {
//	if(keyboard_check(vk_left)){
//		player.x -= Speed;	
//	}
//	if(keyboard_check(vk_right)){
//		player.x += Speed;	
//	}
//	if(keyboard_check(vk_up)){
//		player.y -= Speed;	
//	}
//	if(keyboard_check(vk_down)){
//		player.y += Speed;	
//	}
//}

//for(var i = 0; i<ds_list_size(listOfObjects);i++) {
if(!lost) {
	if(!ds_queue_empty(obj_stack)) {
		var temp = ds_queue_head(obj_stack);
		if(temp.alarm[0] = 0) {
			wrongInput += 25;
			//ds_list_delete(listOfObjects, i);
			ds_queue_dequeue(input_stack);
			ds_queue_dequeue(obj_stack);
			instance_destroy(temp);
			alphaCounter = 1;
		}
	}
} 