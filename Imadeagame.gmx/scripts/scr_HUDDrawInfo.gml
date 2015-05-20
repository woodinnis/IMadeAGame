// Code to draw player information on the screen
draw_set_colour(c_silver);

shotCount = string(objOverlord.shotCount + 1);
maxShots = string(objOverlord.maxShots);

// Display Score
draw_set_font(font_Info);
draw_text(wide - block, y + 32, "SCORE: " + string(G_playerScore));
draw_text(wide - block, y + 48, "SHOTS: " + shotCount + "/" + maxShots);
