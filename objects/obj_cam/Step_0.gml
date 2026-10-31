var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
x = (room_width / 2) - (cam_w / 2);

//moving screen down
if (y < 1000) {
    y += .8;
}
else{
	//when the screen stops moving the player can press enter to return to titlescreen
	notmoving = true
}

camera_set_view_pos(cam, x, y);