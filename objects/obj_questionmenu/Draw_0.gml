if global.tutorialshowup == true {

height = op_border*2 + font_get_size(Font1) + (op_length - 1)*op_space;
var _new_w = 0;
for (var i = 0; i < op_length; i++){
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2;

//if I want to center the menu

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - 50;


if pos == 0{
	index1 = 1
	index2 = 0
	index3 = 0
	index4 = 0
}
else if pos == 1{
	index2 = 1
	index1 = 0
	index3 = 0
	index4 = 0
}


if menu_level = 0{
//draw menu background
	draw_sprite_ext(spr_toastbutton, index1, 659, y + 120, .5, .4, 0, c_white, 1)
	draw_sprite_ext(spr_toastbutton, index2, 657, y + 230, .55, .45, 0, c_white, 1)
	//draw_sprite_ext(spr_toastbutton, index3, x + 125, y + 305, .5, .4, 0, c_white, 1)
}


//draw the options
draw_set_font(Font1)
draw_set_valign(fa_top);
draw_set_halign(fa_left);


for (var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i {_c = c_red} {
		if menu_level == 1{
			yextra = -80
			iiii = 3.8
		}
		else{
			iiii = 4
			yextra = 60
		}
		
		draw_text_color((x + op_border) - 25, y + yextra + op_border + op_space*(i*iiii), option[menu_level, i], _c, _c, _c, _c, 1);
	}
}
}