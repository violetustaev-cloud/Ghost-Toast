if global.player_turn{

	if target_time > 0{
		target_time -= drain_speed
	}


	target_time = max(target_time, 0);
	displayed_time = lerp(displayed_time, target_time, smooth_speed);
}