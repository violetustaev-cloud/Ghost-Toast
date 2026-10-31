state = bstate.idle
sprite_index = noone
image_index = 0
image_speed = 0

global.patterns = [
    [1, 2],
    [3, 4, 5],
	[1,4],
	[7, 8, 9]
	//,
    //[7, 6]
]
//                    0, 1, 2, 3, 4, 5, 6, 7, 8, 9
global.group_slot = [ 0, 0, 1, 0, 1, 2, 1, 0, 1, 2]

warn_duration = 27
active_duration = 30
retract_duration = 10
in_round = false
attack_timer = 0
group = 0
reset_time = warn_duration + active_duration + retract_duration - 0.8
pattern6 = false

my_round = -1

has_hit = false