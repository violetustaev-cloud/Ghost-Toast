if !global.GO_screen && !global.WIN_screen{
	show_debug_message(" !global.GO_screen && !global.WIN_screen")
//show_debug_message(pla_health)

if global.player_turn == false && global.enemy_turn == true{
	show_debug_message("global.player_turn == false && global.enemy_turn == true")
if timer > 0{
	timer--
}
if keyboard_check_pressed(global.rightkey) && timer <= 0{
	timer = 5
	
	//(1, 2) The start to (2, 2)
	if x == col1{
		x = col2
		exit
	}

	if x == col2{
		x = col3
		exit
	}

	if x == col3{
		x = col4
		exit
	}
	
	if x == col4{
		x = col5
		exit
	}
	
	if x == col5{
		x = col6
		exit
	}
	
	if x == col6{
		x = col7
		exit
	}
	
	//add col 8 row must be 2
	if x == col7 && y = row2{
		x = col8
		exit
	}
	
}
	
if keyboard_check_pressed(global.leftkey) && timer <= 0{
	timer = 5
	
	//(1, 2) The start to (2, 2)
	if x == col7{
		x = col6
		exit
	}

	if x == col2{
		x = col1
		exit
	}

	if x == col3{
		x = col2
		exit
	}
	
	if x == col4{
		x = col3
		exit
	}
	
	if x == col5{
		x = col4
		exit
	}
	
	if x == col6{
		x = col5
		exit
	}
	if x == col8{
		x = col7
		exit
	}
}
	
if keyboard_check_pressed(global.upkey) && timer <= 0{
	timer = 5
	if y == row3{
		y = row2
		exit
	}

	if y == row2{
		y = row1
		exit
	}
}

if keyboard_check_pressed(global.downkey) && timer <= 0{
	timer = 5	
	if y == row2 && x != col8{
		y = row3
		exit
	}

	if y == row1 && x != col8{
		y = row2
		exit
	}
}

if keyboard_check_pressed(global.acceptkey){
	if x == col8 && y == row2{
		obj_parentghost.ehealth -= 10;
		obj_parentghost.image_index = 1
		audio_play_sound(snd_crunch, 10, false)
		playerhits = true
	}
}

//if sprite_index is shoot and image_index >= last_frame{enemy takes damage and sprite_index = spr_playerbullet}
}


if global.player_turn == true && global.enemy_turn == false{
	show_debug_message("player turn true")
	if timer > 0{
		timer--
	}
	
	if player_turn_timer > 0{
		player_turn_timer--
		//show_debug_message(player_turn_timer)
	}
	
	if keyboard_check_pressed(global.rightkey) && timer <= 0{
	timer = 5
	
	//(1, 2) The start to (2, 2)
	if x == col1{
		x = col2
		exit
	}

	if x == col2{
		x = col3
		exit
	}

	if x == col3{
		x = col4
		exit
	}
	
	if x == col4{
		x = col5
		exit
	}
	
	if x == col5{
		x = col6
		exit
	}
	
	if x == col6{
		x = col7
		exit
	}
	
	//add col 8 row must be 2
	if x == col7 && y = row2{
		x = col8
		exit
	}
	
}
	if x == col8 && keyboard_check_pressed(global.acceptkey){ //last column
		
		//player ghost is happy
		obj_player.image_index = 2;
		
		//enemy ghost is not happy
		obj_parentghost.image_index = 1
		
		//enemy ghost takes damage
		obj_parentghost.ehealth-=20
		show_debug_message("Enemy Health" + string(obj_parentghost.ehealth))
		
		audio_play_sound(snd_crunch, 10, false) //this is what it sounds like to eat ghosts
		
		
		
		//obj_parentghost.timer = irandom_range(2, 290)
		x = col1
		player_turn_timer = 145
		obj_playerturntimer.target_time = 145
		global.player_turn = false
		global.enemy_turn = true
		
	}

	else if player_turn_timer <= 0{
		//resetting values
		x = col1
		player_turn_timer = 145
		obj_playerturntimer.target_time = 145
		global.player_turn = false
		global.enemy_turn = true
	}
	
}


//game over
if pla_health <= 0 {
	global.GO_screen = true
	obj_parentghost.image_index = 2
}
//player wins
if obj_parentghost.ehealth <= 0 {
	global.WIN_screen = true
	obj_parentghost.image_index = 1
}

}

//player health goes down

//my solution so the player doesn't lose all their health from one mistake
if pushtimer{
	pushback_timer--
	pushtimer = false
	stop = false
}

//pushes player back a step to stop from more damage
if pushback_timer <= 0{
	if x == col7{
		x = col6
		pushback_timer = 1
		exit
	}

	if x == col2{
		x = col1
		pushback_timer = 1
		exit
	}

	if x == col3{
		x = col2
		pushback_timer = 1
		exit
	}
	
	if x == col4{
		x = col3
		pushback_timer = 1
		exit
	}
	
	if x == col5{
		x = col4
		pushback_timer = 1
		exit
	}
	
	if x == col6{
		x = col5
		pushback_timer = 1
		exit
	}
	if x == col8{
		x = col7
		pushback_timer = 1
		exit
	}
	if x == col1{
		//for col1 if unavilable then push player to different row or to column 2
		if !place_meeting(row2, col2, obj_enemyattack ){
			x = col2
		}
		if place_meeting(row2, col2, obj_enemyattack ){
			x = col2
			y = row3
		}
		if place_meeting(row3, col2, obj_enemyattack ){
	
			if !place_meeting(row1, col1, obj_enemyattack){
				show_debug_message("row 1 col1 available")
				x = col1
				y = col1
			}
			if !place_meeting(row3, col1, obj_enemyattack){
				show_debug_message("row 3 col1 available")
				x = col1
				y = row3
			}
		}
		pushback_timer = 1
		exit
	}
	pushback_timer = 1
}