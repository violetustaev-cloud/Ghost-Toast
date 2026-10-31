up_key = keyboard_check_pressed(global.upkey);
down_key = keyboard_check_pressed(global.downkey);
accept_key = keyboard_check_pressed(global.acceptkey)

show_debug_message("x" + string(x))

//store number of options in current menu
op_length = array_length(option)

pos += down_key - up_key;

if global.tutorial == false{

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};


//using the options
if accept_key{

		switch(pos){
			//start game
			case 0: 
				room_goto(rm_battleroom)
			break;
			//starts the instructions
			case 1:
				global.tutorial = true
			break;
			//Exits Game
			case 2: 
				game_end();
			break;
	

		}
	}
}