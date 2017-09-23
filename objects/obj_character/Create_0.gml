/// @description Insert description here
// You can write your code in this editor

move_speed  = 300;


movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");

//player shake when firing
shake = 2;


camera = camera_create_view(0,0,1024,768,0,obj_character,10,10,64,64);
//view_enabled = true;
//view_visible[0] = true;
view_set_camera(0, camera);
window_set_fullscreen(true);

