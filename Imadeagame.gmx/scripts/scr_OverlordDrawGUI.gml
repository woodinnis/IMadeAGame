// Draw GUI elements 

if(room != room_Start && room != room_LevelSelect)
{
    draw_set_font(font_Title);
    if(playerWin || playerLose)
    {
        // Deactivate and black out game area
        instance_deactivate_all(true);
        draw_set_alpha(0.6);
        draw_set_color(c_black);
        draw_rectangle(x-1,y-1,wide+1,high+1,false);
        draw_set_alpha(1);
        
        // Show win/lose message
        if(playerWin)
        {
            draw_set_colour(c_lime);
            draw_text(wide/2,high/2,"You Win!");
        }
        if(playerLose)
        {
            draw_set_colour(c_red);
            draw_text(wide/2,high/2,"You Lose!");
        }
        
        // Place Menu button on screen
        instance_create(wide/2,(high/3)*2,objMenuBtn);
    }
}
