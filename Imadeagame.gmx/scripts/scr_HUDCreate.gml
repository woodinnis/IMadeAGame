// Code to run on creation of the HUD
//display_set_gui_size(display_get_width(),display_get_height());

view_wview[0] = display_get_width();
view_hview[0] = display_get_height();

wide = view_wview[0];
high = view_hview[0];

display_set_gui_size(display_get_width(),display_get_height());

show_debug_message(string(wide) + " by " + string(high));

block = 128;

/* Create an instance of each weapon on the toolbar
instance_create(x + block/2, high - block/2, objToolbarShoe);
instance_create(x + ((block/2) * 3), high - block/2, objToolbarCoffee);
instance_create(x + ((block/2) * 5), high - block/2, objToolbarCountry);
instance_create(x + ((block/2) * 7), high - block/2, objToolbarHerring);
