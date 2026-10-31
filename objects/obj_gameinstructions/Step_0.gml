if global.tutorial{
	//button logic
	if keyboard_check_pressed(global.leftkey){
		if instruction_index > 0{
			instruction_index--
		}
	}
	
	if keyboard_check_pressed(global.rightkey){
		if instruction_index < 4{
			instruction_index++ 
			
		}
	}
	
	if instruction_index == 4{
		if keyboard_check_pressed(global.rightkey){
			global.tutorial = false
			instruction_index = 0
		}
		//idk do something when pressing enter
	}

	



}