/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_speech) and x == destination and !controller.guyReturn) {
	speak = instance_create_layer(room_width/2, room_height/2, "speechbubble", obj_speech)
}