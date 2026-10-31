if room == rm_battleroom2{
	global.patterns = [
    [1, 2],
    [3, 4, 5],
	[1,8],
	[7, 4, 9]
	
	]
}

if !global.GO_screen && !global.WIN_screen{

    if !global.player_turn && global.enemy_turn{
		
		var pattern = global.patterns[global.current_pattern]
		//var patterns = global.patterns[global.current_pattern] //for group six only
		
		//setting up patterns to match the round number
		if my_round != global.round_number{
		    my_round = global.round_number
			
		    in_round = array_contains(pattern, group)
		    alarm[0] = -1
		    state = bstate.idle
		    sprite_index = noone
		    
			//making sure only the correct groups run
			var slot = 0
		    var n = 0
		    for (var i = 0; i < array_length(pattern); i++){
		        if pattern[i] == 6 continue
		        if pattern[i] == group slot = n
		        n++
		    }

		    //timing
			var total = warn_duration + active_duration + retract_duration
		    var step_len = total

		    reset_time = max(n * step_len - total, 1)
		    attack_timer = 20 + slot * step_len
		}
		
		
        visible = true
		
        if in_round && state == bstate.idle{
            if attack_timer > 0{
                attack_timer--
            }
            else{
                var can_attack = true
				/* for (var i = 0; i < array_length(patterns); i++){
			        if patterns[i] == 6 pattern6 = true
			    }
				
				Sprite position is wonky because of player position.
				I have to find a more optimal way to do this before publishing with this attack.
				I will be working on it.
				
				*/
                if  pattern6 == true && instance_exists(obj_playerbullet){
                    var tx = obj_playerbullet.x
                    var ty = obj_playerbullet.y

                    var occupied = false
                    with (obj_enemyattack){
                        if state != bstate.idle && x == tx && y == ty{
                            occupied = true
                        }
                    }

                    if occupied{
                        attack_timer = 10
                        can_attack = false
                    }
                    else{
                        x = tx
                        y = ty
                    }
                }

                if can_attack{
                    state = bstate.warning
                    sprite_index = spr_warningplaceholder
                    alarm[0] = warn_duration
                }
            }
        }

        
    }
    else if global.player_turn && !global.enemy_turn{
        visible = false
        speed = 0
    }
}