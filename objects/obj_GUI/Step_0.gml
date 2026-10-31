left_key = keyboard_check_pressed(global.leftkey);
right_key = keyboard_check_pressed(global.rightkey);
accept_key = keyboard_check_pressed(global.acceptkey)

if room == rm_battleroom2{ //for now rm_battlroom2 is the last room before the credits
	optionwin[0] = "   Credits"
}

//Game Over screen
if global.GO_screen{
	global.WIN_screen = false
	
	layer_set_visible("Ghost", true)
	ol_length = array_length(optionlose)


	pos += right_key - left_key;
	if pos >= ol_length {pos = 0};
	if pos < 0 {pos = ol_length - 1};
	
	show_debug_message("position:" + string(pos))	
	obj_player.image_index = 1
	show_debug_message("obj_player image_index" + string(obj_player.image_index))
	
	visible = true
	
	
		if accept_key{
			switch(pos){
				
				//try again
				case 0: 
					visible = false
					global.GO_screen = false
					global.player_turn = true
					global.enemy_turn = false
					global.round_number = 0
					global.current_pattern = 0
					obj_game.enemyturntimer = 500
					layer_set_visible("Ghost", false)
					
					room_restart()		
				break;
				
				//quit to titlescreen
				case 1: 
					visible = false
					global.GO_screen = false
					global.player_turn = true
					global.enemy_turn = false
					global.round_number = 0
					global.current_pattern = 0
					obj_game.enemyturntimer = 500
					layer_set_visible("Ghost", false)
					
					room_restart()
					room_goto(rm_titlescreen);
					
				break;
			}
		}
}

//Player Win Screem
if global.WIN_screen{
	global.GO_screen = false
	w_length = array_length(optionwin)
	layer_set_visible("Ghost", true)
	pos += right_key - left_key;
	if pos >= w_length {pos = 0};
	if pos < 0 {pos = w_length - 1};
	
	show_debug_message("position:" + string(pos))	
	visible = true
	obj_somethingghost.visible = false
	obj_player.image_index = 3
		if accept_key{
			switch(pos){
				
				//next level
				case 0: 
				
				//reset for next room
					visible = false
					global.WIN_screen = false
					global.player_turn = true
					global.enemy_turn = false
					global.round_number = 0
					global.current_pattern = 0
					layer_set_visible("Ghost", false)
					obj_game.enemyturntimer = 500
					obj_somethingghost.visible = true
					
					//will have to change when adding more rooms
					if room == rm_battleroom{
						room_goto_next()
					}
					else{
						room_goto(rm_credits)
					}
				break;
				
				//quit to titlescreen
				case 1:
				//reset to play again
					visible = false
					global.WIN_screen = false
					global.player_turn = true
					global.enemy_turn = false
					global.round_number = 0
					global.current_pattern = 0
					obj_game.enemyturntimer = 500
					global.GO_screen = false
					layer_set_visible("Ghost", false)
					obj_somethingghost.visible = true
					room_goto(rm_titlescreen);
					
				break;
			}
	}
}