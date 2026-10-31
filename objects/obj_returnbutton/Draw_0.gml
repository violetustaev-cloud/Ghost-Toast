draw_sprite_ext(spr_toastbutton, index, x, y, .5,.5, 0, c_white, 1)

if index = 1{
draw_set_colour(c_red)
}
else{
draw_set_colour(c_white)
}
draw_text(x - 134, y - 50, "Return to Title")