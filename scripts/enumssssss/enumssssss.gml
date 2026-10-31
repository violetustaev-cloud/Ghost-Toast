//for patterns that race at the player
enum pattern_state{
	idle,
	active,
}

//for patterns that come from below
enum bstate{
	idle,
	warning,
	active,
	retract
}