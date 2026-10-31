//if player health goes down, index goes up
eh = obj_parentghost.ehealth
//show_debug_message("eh" + string(eh))
if eh == 150{
	//show_debug_message("working0")
	image_index = 0
}
else if eh < 100 && eh >= 90{
	//show_debug_message("working1")
	image_index = 1
}
else if eh < 90 && eh >= 80{
	//show_debug_message("working2")
	image_index = 2
}
else if eh < 80 && eh >= 70{
	image_index = 3
}
else if eh < 70 && eh >= 50{
	image_index = 4
}
else if eh < 50 && eh >= 30{
	image_index = 5
}
else if eh < 30 && eh >= 11{
	image_index = 6
}
else if eh < 11 && eh >= 1{
	image_index = 7
}
else if eh <= 0{
	image_index = 8
}