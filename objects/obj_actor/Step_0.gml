/// @description Move
/*
Kind of asy, move this actor to a certain point at a certain speed
*/
// You can write your code in this editor
if move==true {
if point_distance(x,y,endx,endy) > speed
   {
   move_towards_point(endx,endy,speed);
   }
else speed = 0;
};
if speak=true{
obj_script.playing=0;
if !instance_exists(obj_speech){instance_create_layer(room_width/2,room_height/2,"Action",obj_speech)};
obj_speech.speech=speech;
if keyboard_check_released(vk_anykey){instance_destroy(obj_speech);speak=0;obj_script.playing=1};
};