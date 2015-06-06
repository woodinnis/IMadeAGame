// Show a help message

if(room == room_Start)
{
    if(objHelpBtn.needHelp = true)
    {
        // Set the font
        draw_set_font(font_Info);
        
        // Draw a low-alpha rectangle over the  view surface
        draw_set_alpha(.5);
        draw_rectangle(x-1, y-1, wide + 1, high + 1, false);
        
        // Show a message
        draw_set_alpha(1);
        draw_set_colour(c_silver);
        draw_text(wide/2, high/3, "CLICK STRANGE OBJECTS AROUND THE SCREEN TO FLING THEM AT THE TARGET IN THE MIDDLE");
        draw_text(wide/2, high/3 + 32, "UNLOCK NEW THINGS TO FLING BY DESTROYING MORE TARGETS");
    }
}
