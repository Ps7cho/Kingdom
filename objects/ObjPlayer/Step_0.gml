var seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;

var this_angle = 0
var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
   move(move_speed_this_frame,  move_dir);
}

if keyboard_check_pressed(vk_space) {
	var savex = x;
	var savey = y;
	
	if this_angle{
		dir = this_angle;
	}else{
		var dir = point_direction(x,y,mouse_x,mouse_y) 
	}
	move_contact_solid(dir, 300);
	var savexx = x;
	var saveyy = y;
	
}

if collision_point(x+33,y+58, objPath,false,true){
	move_speed = runspeed
}else{
	move_speed = walkSpeed
}	
