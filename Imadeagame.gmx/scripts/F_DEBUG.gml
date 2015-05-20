draw_set_colour(c_black);
draw_set_font(font_debug);

if(instance_exists(objWeaponParent))
    draw_text(50,50, "Bounces: " + string(objWeaponParent.BounceCount));
draw_text(50,80, "Shots: " + string(shotCount));

