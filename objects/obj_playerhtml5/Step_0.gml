//created new player object and sprites because html5 doesn't listen to logic and ignored my code


if global.GO_screen{
	sprite_index = spr_playerlose
}
if global.WIN_screen{
	sprite_index = spr_playerwin
}


if yup{
	if y <= starty - 15{
		y-= 0.3
	}
	else{
		y-=.5
	}
	if y <= starty - 20{
		yup = false
		yown = true
	}
	
}

if yown{
	if y >= starty + 15{
		y+= 0.3
	}
	else{
	y+=.5
	}
	if y >= starty + 20{
		yup = true
		yown = false
	}
}

if !global.GO_screen && !global.WIN_screen{
//making faces
if image_index = 1{
	if index_timer > 0{
		index_timer--
	}
	if index_timer <= 0{
		image_index = 0
		index_timer = 20
	}
}

if image_index = 2{
	if index_timer > 0{
		index_timer--
	}
	if index_timer <= 0{
		image_index = 0
		index_timer = 20
	}
}
}