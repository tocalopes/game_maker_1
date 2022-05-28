/// @description update camera


//Update destination
if (instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
}

//update object position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

x = clamp(x,view_w_half, room_width - view_w_half) //minimo e máximo
y = clamp(y, view_h_half, room_width - view_h_half);

//update camera view
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);