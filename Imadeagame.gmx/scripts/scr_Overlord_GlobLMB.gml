// Create a new instance of the current weapon when the player clicks somewhere in the game field
if(!instance_exists(objWeaponParent))
{
    spawnX = device_mouse_x(0);
    spawnY = device_mouse_y(0);
            
    instance_create(spawnX, spawnY, G_currentWeapon);
}
