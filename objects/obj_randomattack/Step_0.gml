
if !global.GO_screen || !global.WIN_screen{

if !global.player_turn && global.enemy_turn{
	visible = true
	speed = irandom_range(-2, -4)
		
		
	if instance_number(obj_randomattack) <=7{
		if timer >= 0{
		timer--
		}
	
		if timer <= 0{
		var enemybullet = instance_create_layer(startx, starty, "Instances", obj_randomattack)
		timer = irandom_range(2, 15)
		exit
		}
	}

	if x < 355{
		instance_destroy()
	}
	if y <  256 || y > 503{
		instance_destroy()
	}
}


else if global.player_turn = true && global.enemy_turn = false{
	visible = false
	speed = 0
}
}