/// @description Insert description here
// Marking the pointed tiles for test issues
//It should colour up the tile where the char is and the one it is facing
if subimg_now<subimg_o{subimg_now=subimg_o}
if subimg_now<subimg_f{stepcount+=image_speed;if stepcount>20{subimg_now++;stepcount=0}}else{subimg_now=subimg_o};
draw_sprite(spr_farmer_normal,subimg_now,x,y)
draw_set_alpha(0.2);
draw_set_colour(c_red);//draw a square on the slot
//square: draw_rectangle(tile_x*tile_width,tile_y*tile_height,(tile_x+1)*tile_width,(tile_y+1)*tile_height,0);
draw_rectangle(tile_x*tile_width,tile_y*tile_height,(tile_x+2)*tile_width,(tile_y+2)*tile_height,0);
draw_set_colour(c_blue);
//SQUARE SLOT: Draw a square on the objective slot
//ISOMETRIC SLOT: draw a circle on the objective slot´s corner
switch point {
	case "right":
		//draw_rectangle((tile_x+1)*tile_width,tile_y*tile_height,(tile_x+2)*tile_width,(tile_y+1)*tile_height,0);
		draw_circle((tile_x+2)*tile_width,(tile_y+1)*tile_height,4,0);
		break;
	case "left":
		//draw_rectangle((tile_x-1)*tile_width,tile_y*tile_height,(tile_x)*tile_width,(tile_y+1)*tile_height,0);
		draw_circle((tile_x)*tile_width,(tile_y+1)*tile_height,4,0);
		
		break;
	case"up":
		//draw_rectangle(tile_x*tile_width,(tile_y-1)*tile_height,(tile_x+1)*tile_width,(tile_y)*tile_height,0);
		draw_circle((tile_x+1)*tile_width,(tile_y)*tile_height,4,0);

		break;
	case "down":
		//draw_rectangle(tile_x*tile_width,(tile_y+1)*tile_height,(tile_x+1)*tile_width,(tile_y+2)*tile_height,0);
		draw_circle((tile_x+1)*tile_width,(tile_y+2)*tile_height,4,0);

		break;
}


draw_set_alpha(1);
