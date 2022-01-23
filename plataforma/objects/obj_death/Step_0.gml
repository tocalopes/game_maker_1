/// @description Insert description here
// You can write your code in this editor
if(done == 0){
	vsp = vsp + grv;

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
		if (vsp > 0){
			done = 1;
			image_index = 1;
		} 
		while(!place_meeting(x, y + vsp, obj_wall)){
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
}
