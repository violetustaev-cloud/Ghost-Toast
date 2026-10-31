if obj_cam.notmoving == true{
	if keyboard_check_pressed(global.acceptkey){
		index = 1
		room_goto(rm_titlescreen)
		
	}
	else{
	index = 0
	}
}