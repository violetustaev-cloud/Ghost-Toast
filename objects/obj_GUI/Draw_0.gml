if global.GO_screen{ //gave over
	visible = true
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - 50;
	
	height = ol_border*2 + font_get_size(Font1) + (ol_length - 1)*ol_space;
	var _new_w = 0;
	for (var i = 0; i < ol_length; i++){
		var _op_w = string_width(optionlose[i]);
		_new_w = max(_new_w, _op_w);
	}
	width = _new_w + ol_border*2;

	
	draw_sprite_ext(spr_toastbutton, 0, x + 120, y + 200, 1.5,3.5, 0, #946d5a, 1)
	draw_set_font(Font1_big)
	draw_text(x - 160, y - 200, "Game Over")
	
	draw_set_font(Font1)
	if pos == 0{
		index1 = 1
		index2 = 0
	}
	else if pos == 1{
		index2 = 1
		index1 = 0
	}
	

	
	//draw menu background
	draw_sprite_ext(spr_toastbutton, index1, x - 140, y + 190, .4, .4, 0, c_white, 1)
	draw_sprite_ext(spr_toastbutton, index2, x + 380, y + 190, .4, .4, 0, c_white, 1)
		
	

	//draw the options
	draw_set_font(Font1)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);


	for (var i = 0; i < ol_length; i++){
		var _c = c_white;
		if pos == i {_c = c_red} {
				iiii = 20
				xextra = 20
			
			draw_text_color((x-241) + ol_space*(i*iiii),  y + 150, optionlose[i], _c, _c, _c, _c, 1);
		}
	}
	
}


if global.WIN_screen{ //win
	visible = true
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - 50;
	
	
	//sprite_index == spr_gameoverui
	//Game Over layer visible
	height = w_border*2 + font_get_size(Font1) + (w_length - 1)*w_space;
	var _new_w = 0;
	for (var i = 0; i < w_length; i++){
		var _op_w = string_width(optionwin[i]);
		_new_w = max(_new_w, _op_w);
	}
	width = _new_w + w_border*2;

	
	draw_sprite_ext(spr_toastbutton, 0, x + 120, y + 200, 1.5,3.5, 0, #946d5a, 1)
	draw_set_font(Font1_big)
	draw_text(x - 160, y - 200, "YOU WIN!!")
	
	draw_set_font(Font1)
	if pos == 0{
		index1 = 1
		index2 = 0
	}
	else if pos == 1{
		index2 = 1
		index1 = 0
	}
	

	
	//draw menu background
	draw_sprite_ext(spr_toastbutton, index1, x - 140, y + 190, .4, .4, 0, c_white, 1)
	draw_sprite_ext(spr_toastbutton, index2, x + 380, y + 190, .4, .4, 0, c_white, 1)
		
	

	//draw the options
	draw_set_font(Font1)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);


	for (var i = 0; i < w_length; i++){
		var _c = c_white;
		if pos == i {_c = c_red} {
				iiii = 20
				xextra = 20
			
			draw_text_color((x-240) + w_space*(i*iiii),  y + 150, optionwin[i], _c, _c, _c, _c, 1);
		}
	}
	
}