vsp = vsp + grv;

//horizontal section
//sign funtion = return 1 or -1, depending variable é positive or negative
if(place_meeting(x + hsp ,y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = spr_enemy_up;
	image_speed = 0; //multipayer that effects the speed o spray
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
} else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemy_run;
	}
}

if(sign(hsp) != 0) image_xscale = sign(hsp);
 //xcalin on the x aciss

//hp
if(hp == 0) {
	instance_destroy();
}












