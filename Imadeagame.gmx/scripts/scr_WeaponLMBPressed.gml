// Measure boundaries of current weapon
sprWide = sprite_get_width(G_currentWeapon);
sprHigh = sprite_get_height(G_currentWeapon);

// Check to see if location of mouse click is within bounds of the object
// If true, set dragX and dragY to the location the player drags the cursor

if point_in_circle(device_mouse_x(0), device_mouse_y(0), x, y, 128)
{
    dragX = device_mouse_x(0);
    dragY = device_mouse_y(0);
    canFire = true;
}
