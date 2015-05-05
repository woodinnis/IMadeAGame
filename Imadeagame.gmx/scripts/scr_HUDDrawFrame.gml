// Draw the HUD on screen

//wide = display_get_gui_width()
//high = display_get_gui_height()

//block = 128;

// Frame the screen
draw_set_colour(c_olive);
draw_rectangle(x, y, wide, 3, false);
draw_rectangle(x, y, 3, high, false);
draw_rectangle(wide - 3, y, wide, high, false);
draw_rectangle(x ,high - 3, wide, high, false);

// Frame the lower section of the window
draw_rectangle(x ,high - 131, wide, high - 128, false);

// Create squares along the bottom of the screen
draw_rectangle(x + block ,high - 131, x + (block + 3), high, false);
draw_rectangle(x + block*2 ,high - 131, x + (block*2 + 3), high, false);
draw_rectangle(x + block*3 ,high - 131, x + (block*3 + 3), high, false);
draw_rectangle(x + block*4 ,high - 131, x + (block*4 + 3), high, false);
draw_rectangle(x + block*5 ,high - 131, x + (block*5 + 3), high, false);
draw_rectangle(x + block*6 ,high - 131, x + (block*6 + 3), high, false);
draw_rectangle(x + block*7 ,high - 131, x + (block*7 + 3), high, false);