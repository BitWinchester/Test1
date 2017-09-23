/// @description Insert description here
// You can write your code in this editor
var moveM = 0; 
moveM -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
moveM += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);


if (moveM != 0)
{
	menuPos += moveM;
	if (menuPos < 0) menuPos = array_length_1d(menu) - 1;
	if (menuPos > array_length_1d(menu) -1) menuPos = 0;

}

var push; 

push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), 0);

if ( push == 1) scr_menu();
