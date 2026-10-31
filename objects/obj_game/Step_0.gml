if !global.GO_screen || !global.WIN_screen{
	if !global.player_turn && global.enemy_turn{
		if enemyturntimer >= 0{
				enemyturntimer--
				//show_debug_message(enemyturntimer)
			}
		if instance_exists(obj_playerbullet){
		if enemyturntimer <= 0 || obj_playerbullet.playerhits{
	
			if instance_exists(obj_randomattack){
				obj_randomattack.visible = false
				show_debug_message("PLayertrun")
				obj_randomattack.x = 1042
				obj_randomattack.y = 378
			}
					//restting battle vraiables for each round
					global.player_turn = true
					global.enemy_turn = false
					obj_playerbullet.x = obj_playerbullet.col1
					obj_playerbullet.y = obj_playerbullet.row2
					enemyturntimer = 500
					obj_enemyturntimer.target_time = 500
					global.round_number++
				
					//attacks will still occur after player exceeds global pattern amount
					var n = array_length(global.patterns)
					if global.round_number < n{
					    global.current_pattern = global.round_number
					}
					else{
					    var p = irandom_range(1, n - 1)
					    if n > 2{
					        while (p == global.current_pattern){
								//avoids repeating the round before
					            p = irandom_range(1, n - 1)
					        }
					    }
					    global.current_pattern = p
					}
			}
			
			obj_playerbullet.playerhits = false
		}
	}
}
