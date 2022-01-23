/// @description Insert description here
// You can write your code in this editor
draw_self();

if(flash > 0) {
	flash--;
	shader_set(sdr_white);
	draw_self();
	//draw_text(x,y,"oloko");
	shader_reset();
}
