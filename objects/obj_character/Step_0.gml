

var seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;
//x += move_speed_this_frame;


var move_xinput = 0;
var move_yinput = 0;

for ( var i = 0; i < array_length_1d(movement_inputs); i++)
	{
	var this_key = movement_inputs[i];
	if keyboard_check(this_key)
		{
		var this_angle = i*90;
		move_xinput += lengthdir_x(1,this_angle);
		move_yinput += lengthdir_y(1,this_angle);
		}

	}

var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0);
if moving {
	var move_dir = point_direction(0,0,move_xinput,move_yinput);
	//x += lengthdir_x(move_speed_this_frame, move_dir);
	//y += lengthdir_y(move_speed_this_frame, move_dir);
	move(move_speed_this_frame,move_dir);
}


//shooting
if (mouse_check_button(mb_left))
{
	x+= choose(shake,-shake);
    y+= choose(shake,-shake);

	var inst;
	inst = instance_create_layer(x,y,layer,obj_bullet);
	with  (inst)
		{
		speed = obj_bullet.bullet_speed;
		direction = point_direction(x,y,mouse_x,mouse_y);
		}
}

if (mouse_check_button(mb_right))
{
instance_destroy(obj_bullet)
}

