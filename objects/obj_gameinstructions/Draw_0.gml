if global.tutorial{
		/*
	If the instuction index reaches the last frame then 
		the right arrow turns into start playing button
		
		in draw event:
		change arrow position when int his state
		chaneg back if leaving
	
	
	*/
	
	draw_sprite_ext(spr_toastbackground, 0, x, y, .4, .4, 0, c_white, 1)
	draw_sprite_ext(spr_tutorial, instruction_index, x, y - 10, .4, .4, 0, c_white, 1)
	//button logic
	if instruction_index > 0{
	if keyboard_check_pressed(global.leftkey){
		leftarrow_index = 2
	}
	else{
		leftarrow_index = 0
	}
	
	
	
	draw_sprite_ext(spr_arrows, leftarrow_index, 200, 400, .5, .5, 0, c_white, 1 )

	}
	if instruction_index < 4{
	if keyboard_check_pressed(global.rightkey){
		rightarrow_index = 3
	}
	else{
		rightarrow_index = 1
	}
	
	
	
	draw_sprite_ext(spr_arrows, rightarrow_index, 1070, 400, .5, .5, 0, c_white, 1 )

	}
	
	//continue to game
	if instruction_index == 5{
		//start game button
		if keyboard_check_pressed(global.acceptkey){
			draw_sprite_ext(spr_toastbutton, 1, 200, 200, .5, .5, 0, c_white, 1)
		}
		else{
			draw_sprite_ext(spr_toastbutton, 0, 200, 200, .5, .5, 0, c_white, 1)
		}
		
		draw_text(200, 200, "Start Game")
	}
	
	
}