if !global.player_turn && global.enemy_turn{
    if other.state == bstate.active{
		
		if pushtimer == false && stop == false{
	        pla_health -= obj_parentghost.attk_power
			audio_play_sound(snd_crunch, 10, false)
	        obj_player.image_index = 1
			obj_parentghost.image_index = 2
			pushtimer = true
			stop = true
		}
	}
	if stop == false{
		if other.state == bstate.retract{
			if pushtimer == false && stop == false{
			    pla_health -= obj_parentghost.attk_power
				audio_play_sound(snd_crunch, 10, false)
			    obj_player.image_index = 1
				obj_parentghost.image_index = 2
				pushtimer = true
				stop = true
			}
		}
	}
}