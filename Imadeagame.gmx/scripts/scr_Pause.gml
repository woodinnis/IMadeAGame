
if(isPaused)
{
    draw_set_font(font_Title);
    
    // Deactivate weapon and black out game area
    instance_deactivate_object(objWeaponParent);
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(x-1,y-1,wide+1,high+1,false);
    draw_set_alpha(1);
    
    // Pause message
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_set_colour(c_lime);
    draw_text(wide/2,high/2,"Paused");
    
    //instance_create(wide/2, high * 0.75, objMenuBtn);
}
else
{
    instance_activate_all();
}
