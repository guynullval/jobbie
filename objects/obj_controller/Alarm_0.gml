/// @description Insert description here
// You can write your code in this editor


tempIndex = random_range(0, array_length(arrayOfLetters))
temp = instance_create_layer(centerX, centerY, "fontLayer", obj_letter);
temp.image_index = indexOfLetters[tempIndex];
temp.image_speed = 0;
temp.image_xscale = 4;
temp.image_yscale = 4;
ds_list_add(listOfObjects, temp);
ds_queue_enqueue(obj_stack, temp);
ds_queue_enqueue(input_stack, arrayOfLetters[tempIndex]);
alarm_set(0, timerFactor);
