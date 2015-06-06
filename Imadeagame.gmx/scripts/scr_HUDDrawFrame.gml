// Draw the HUD on screen


    // Frame the screen
    draw_set_colour(c_olive);
    draw_rectangle(x, y, wide, 3, false);
    draw_rectangle(x, y, 3, high, false);
    draw_rectangle(wide - 3, y, wide, high, false);
    draw_rectangle(x ,high - 3, wide, high, false);

if(room != room_Start && room != room_LevelSelect)
{    
    /* Frame the lower section of the window
    draw_rectangle(x ,high - 131, wide, high - 128, false);
    
    // Create squares along the bottom of the screen
    draw_rectangle(x + block ,high - 131, x + (block + 3), high, false);
    draw_rectangle(x + block*2 ,high - 131, x + (block*2 + 3), high, false);
    draw_rectangle(x + block*3 ,high - 131, x + (block*3 + 3), high, false);
    draw_rectangle(x + block*4 ,high - 131, x + (block*4 + 3), high, false);
    draw_rectangle(x + block*5 ,high - 131, x + (block*5 + 3), high, false);
    draw_rectangle(x + block*6 ,high - 131, x + (block*6 + 3), high, false);
    draw_rectangle(x + block*7 ,high - 131, x + (block*7 + 3), high, false);
    */
}

// Build the start menu
if(room == room_Start)
{
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_set_colour(c_black);
    draw_set_font(font_Title);
    draw_text(wide/2, high/2, "Hey Look! I made a game!");
    
    instance_create(wide/2, high * 0.75, objStartBtn);
    instance_create(wide/2, high * 0.8, objLvlBtn);
    instance_create(wide/2, high * 0.85, objHelpBtn);
    instance_create(wide/2, high * 0.9, objQuitBtn);
}
