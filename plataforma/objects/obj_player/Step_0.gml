key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); //check de virtual keyboard lef
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));//constant
key_jump = keyboard_check_pressed(vk_space);

if((key_left) || (key_right) || (key_jump)){
	controller = 0;
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2){ //abs awlays positive
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_left = max(gamepad_axis_value(0,gp_axislh),0);
}

if (gamepad_button_check_pressed(0,gp_face1)){ //xbutton
	controller = 1;
	key_jump = 1;
}

var move = key_right - key_left;//last only 1 step = 1 frame

hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x, y + 1, obj_wall) && (key_jump)){
	vsp = -9;
}
//horizontal section
//sign funtion = return 1 or -1, depending variable é positive or negative
if(place_meeting(x + hsp ,y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp; //horizontal orientation

//vertical section
if(place_meeting(x ,y + vsp, obj_wall)){
	while(!place_meeting(x, y + vsp, obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;


//Animation
if (!place_meeting(x, y + 1, obj_wall)){
	sprite_index = spr_player_up;
	image_speed = 0; //multipayer that effects the speed o spray
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
} else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_run;
	}
}

if(sign(hsp) != 0) image_xscale = sign(hsp);
 //xcalin on the x aciss














