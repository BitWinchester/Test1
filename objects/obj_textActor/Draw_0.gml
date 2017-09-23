/// @description Insert description here
// You can write your code in this editor

//if instance_exists(obj_character){
//character = obj_character;
//draw_text(character.x,character.y,"test string");
//}

draw_text(32,32,textToSay[0]);
text_width = string_width_ext(textToSay[0],5,-1);
boxHeight = 128;
draw_rectangle(32,32,text_width,boxHeight,true);