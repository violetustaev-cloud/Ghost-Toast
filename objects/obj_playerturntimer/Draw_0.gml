if global.player_turn{


	var _x = 390
	var _y = 550
	
	//timer sprite container
	draw_sprite(spr_phTimer, 0, 632, 570)
	
	
	//makinh the sprite disappear as the time goes down
	var pct = displayed_time/max_time
	var wfill = sprite_get_width(spr_phTimerFill)
	var hfill = sprite_get_height(spr_phTimerFill)
	var wvisible = wfill * pct

	if wvisible > 0 {
		draw_sprite_part(spr_phTimerFill, 0, 0, 0, wvisible, hfill, _x, _y)
	}

	/*draw_set_color(c_white)
	draw_text(_x + wfill + 15, _y, string(ceil(displayed_time)))
	*/

}