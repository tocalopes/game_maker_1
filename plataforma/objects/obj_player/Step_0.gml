key_left = keyboard_check(vk_left); //check de virtual keyboard lef
key_right = keyboard_check(vk_right) //constant
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;//last only 1 step = 1 frame

hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x, y + 1, obj_wall) && (key_jump)){
	vsp = -7;
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