//Step Event

var k_left  = keyboard_check(ord("A"));
var k_right = keyboard_check(ord("D"));
var k_jump  = keyboard_check_pressed(vk_space);

var spd_wanted = 0; //The wanted horizontal speed for this step

if(k_left)
{
    spd_wanted -= 3;
}
if(k_right)
{
    spd_wanted += 3;
}

speed_x = spd_wanted; //Set the horizontal speed based on the wanted speed

speed_y += grav; //Apply gravity

if(k_jump && place_meeting(x, y + 1, obj_block))
{
    speed_y = -6;
	audio_sound_pitch(snd_hit,irandom(3));
	audio_play_sound(snd_hit,0,false);
	
}

//Horizontal collision
if(place_meeting(x + speed_x, y, obj_block))
{
    while(!place_meeting(x + sign(speed_x), y, obj_block))
    {
        x += sign(speed_x);
    }
    speed_x = 0;
}
x += speed_x;

//Vertical collision
if(place_meeting(x, y + speed_y, obj_block))
{
    while(!place_meeting(x, y + sign(speed_y), obj_block))
    {
        y += sign(speed_y);
    }
    speed_y = 0;
}
y += speed_y;