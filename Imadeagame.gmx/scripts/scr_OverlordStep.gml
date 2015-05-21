// Code to execute on each step

// If player score is less that current winning score continue to spawn new targets
// Otherwise set win state to true
if(G_playerScore < G_winScore && shotCount < maxShots)
{
    // If no target is present in the room, spawn a new target
    if(!instance_exists(objTargetParent))
    {
        // Do nothing
        // Assign the object name to a variable
        newTarget = choose(objTargetDragon, objTargetICT, objTargetFlailMan, objTargetFireHydrant);
        
        // Set target spawn locations based on height and width of the room, and the target
        targetSpawnX = room_width - sprite_get_width(newTarget);
        targetSpawnY = room_height - sprite_get_height(newTarget);
            
        // Set the current Target to a variable    
        currentTarget = instance_create(random(targetSpawnX), random(targetSpawnY), newTarget);
    }
}
else if(G_playerScore >= G_winScore)
{
    playerWin = true;
}

if(shotCount >= maxShots)
{
    playerLose = true;
}

// Check for spacebar press or RMB click to pause/unpause the game
if(keyboard_check_pressed(vk_space) || device_mouse_check_button_pressed(0,mb_right))
{
    if(isPaused)
    {
        isPaused = false;
        // If a menu button exists on screen, remove it
        if(instance_exists(pauseMenuBtn))
        {
            with(pauseMenuBtn)
            {
                instance_destroy();
            }
        }
    }
    else
    {
        isPaused = true;
        // Create a menu button on screen when the game pauses
        pauseMenuBtn = instance_create(room_width/2,(room_height/3)*2,objMenuBtn);
    }
}
