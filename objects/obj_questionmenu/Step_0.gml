left_key = keyboard_check_pressed(global.upkey);
right_key = keyboard_check_pressed(global.downkey);
accept_key = keyboard_check_pressed(global.acceptkey)

//store number of options in current menu
op_length = array_length(option[menu_level])


if global.tutorialshowup == true {
pos +=  left_key - right_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//using the options
if accept_key{
	
	var _sml = menu_level;
	
switch(menu_level){
	case 0:
		switch(pos){
			//start game
			case 0: 
				//Yes
				room_goto(rm_battleroom)
				global.tutorialshowup = false
			break;
			//Exits Game
			case 1: //No
				global.tutorial = true
				global.tutorialshowup = false
			break;
			}
		break;
		}
	
	//set position back
	if _sml != menu_level {pos = 0};
	//correvting option length
	op_length = array_length(option[menu_level])

		}
}