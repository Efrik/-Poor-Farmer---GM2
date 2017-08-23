///Movement & objective location
// You can write your code in this editor

//movement
if keyboard_check(vk_right){x+=3;point="right";subimg_o=8;subimg_f=11;image_speed=5};
if keyboard_check(vk_left){x-=3;point="left";subimg_o=12;subimg_f=15;image_speed=5};
if keyboard_check(vk_up){y-=3;point="up";subimg_o=4;subimg_f=7;image_speed=5};
if keyboard_check(vk_down){y+=3;point="down";subimg_o=0;subimg_f=3;image_speed=5};
if !keyboard_check(vk_anykey){;image_speed=0}
//locate character slot (easy square)
tile_x=x div tile_width;
tile_y=y div tile_height;

//locate character slot (isometric)
/* every tile takes actualy four tiles in size, and the romboidal tiles overlap eachother in 
their squary size, thus making every object to exist over up to four tiles actually. So, we 
need to know in which romboidal slot the object actually is. Just consider that on every quarter 
of the square sprite there is a half that pertains the real romboidal slot, and half that pertains 
any other romboidal slot.
*/
if ((tile_x+tile_y) mod 2 == 0) { //If it is one of the up-left or down-right corners
	if ((tile_width - (x mod tile_width))/tile_width > (y mod tile_height)/tile_height){
	//if it actually the bottonm-right
		tile_x-=1; //the slot is actually the one on the up-left corner
		tile_y-=1;
	}
}else{ //if it is in either the bottom-left or the top-right
	if (x mod tile_width)/tile_width <(y mod tile_height)/tile_height{ 
	//if it is the bottom-left
		tile_x-=1;//the real slot is the one above where the object is
	}else{
		tile_y-=1;//the real slot is the one to the left of the object
	}
}