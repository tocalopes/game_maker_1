/// @description Seturp camera
// You can write your code in this editor
cam = view_camera[0];
follow = obj_player;//return de camera create by default, view port 0
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
x_to = xstart;
y_to = ystart;