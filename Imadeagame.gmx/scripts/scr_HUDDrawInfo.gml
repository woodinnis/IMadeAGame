// Code to draw player information on the screen

if(room != room_Start && room != room_LevelSelect)
{
    draw_set_colour(c_silver);
        
    // Display Score
    draw_set_font(font_Info);
    draw_text(wide - block, y + 32, "SCORE: " + string(G_playerScore));
    draw_text(wide - block, y + 48, "SHOTS: " + string(shotCount) + "/" + string(G_shotLimit));
}
