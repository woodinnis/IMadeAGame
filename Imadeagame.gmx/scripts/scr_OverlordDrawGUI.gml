// Draw GUI elements 

draw_set_font(font_Title);
if(playerWin || playerLose)
{
    // Deactivate and black out game area
    instance_deactivate_all(true);
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(x-1,y-1,room_width+1,room_height+1,false);
    draw_set_alpha(1);
    
    // Show win/lose message
    if(playerWin)
    {
        draw_set_colour(c_lime);
        draw_text(room_width/2,room_height/2,"You Win!");
    }
    if(playerLose)
    {
        draw_set_colour(c_red);
        draw_text(room_width/2,room_height/2,"You Lose!");
    }
    
    // Place Menu button on screen
    instance_create(room_width/2,(room_height/3)*2,objMenuBtn);
}
