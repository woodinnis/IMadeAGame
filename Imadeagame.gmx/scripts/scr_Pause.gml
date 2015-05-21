
if(isPaused)
{
    draw_set_font(font_Title);
    
    // Deactivate weapon and black out game area
    instance_deactivate_object(objWeaponParent);
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(x-1,y-1,room_width+1,room_height+1,false);
    draw_set_alpha(1);
    
    // Pause message
    draw_set_colour(c_lime);
    draw_text(room_width/2,room_height/2,"Paused");
}
else
{
    instance_activate_all();
}
