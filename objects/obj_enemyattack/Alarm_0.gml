switch(state){
	case bstate.warning:
		state = bstate.active
		sprite_index = spr_spikeplaceholder
		image_index = 0
		image_speed = 1
		
		alarm[0] = active_duration
	break;
	
	case bstate.active:
		state = bstate.retract
		sprite_index = spr_retractplaceholder
		image_index = 0
		image_speed = 1
		
		alarm[0] = retract_duration
	break;
		case bstate.retract:
	    state = bstate.idle
	    sprite_index = noone
	    image_index = 0
	    image_speed = 0
	    attack_timer = (group == 6) ? 40 : reset_time
	break;
	}