//if player health goes down, index goes up
ph = obj_playerbullet.pla_health
if ph == 100{
	image_index = 0
}
else if ph < 100 && ph >= 90{
	image_index = 1
}
else if ph < 90 && ph >= 80{
	image_index = 2
}
else if ph < 80 && ph >= 70{
	image_index = 3
}
else if ph < 70 && ph >= 50{
	image_index = 4
}
else if ph < 50 && ph >= 30{
	image_index = 5
}
else if ph < 30 && ph >= 11{
	image_index = 6
}
else if ph < 11 && ph >= 1{
	image_index = 7
}
else if ph <= 0{
	image_index = 8
}