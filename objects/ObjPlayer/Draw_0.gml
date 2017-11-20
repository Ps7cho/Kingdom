/// @description Draw sprite
var animLenght = 9;
var frameSize = 64;
var animSpeed = 15;

// offset for the shadow
var xx = x-x_offset;
var yy = y-y_offset;


var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
		
    }
}

var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    if this_angle <= 89 or this_angle >= 271 {
		y_frame = 11;	//right
	}else if this_angle = 90 {
		y_frame = 8;	//up	
	}else if this_angle <= 269 {
		y_frame = 9;	//left
	}else if this_angle = 270 {
		y_frame = 10;	//down
	}
}else{
	x_frame = 0;
}



//draw chatacter shadow
draw_sprite(sprCharacterShadow, 0, xx, yy);

//draw character base
draw_sprite_part(spritebody, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character feet
draw_sprite_part(spriteFeet, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character legs
draw_sprite_part(spriteLegs, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character shirt
draw_sprite_part(spriteShirt, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character Hair
draw_sprite_part(spriteHair, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character Weapon
draw_sprite_part(spriteWeapon, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//Animate frame
if(x_frame < animLenght -1) { x_frame += animSpeed/60; }
else							 { x_frame = 1;  }

//draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow,true);
