// Code to run on creation of the HUD
display_set_gui_size(room_width,room_height);

wide = display_get_gui_width()
high = display_get_gui_height()

block = 128;

// Create an instance of each weapon on the toolbar
instance_create(x + block/2, high - block/2, objToolbarShoe);
instance_create(x + ((block/2) * 3), high - block/2, objToolbarCoffee);
instance_create(x + ((block/2) * 5), high - block/2, objToolbarCountry);
instance_create(x + ((block/2) * 7), high - block/2, objToolbarHerring);