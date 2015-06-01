// Code to execute on each step

// If player score is less that current winning score continue to spawn new targets
// Otherwise set win state to true
if(G_playerScore < G_winScore && shotCount < maxShots)
{
    // If no target is present in the room, spawn a new target
    if(!instance_exists(objTargetParent))
    {   
        // I'd still like to find a way to place all these names into an array
        currentTarget = F_targetSpawn(choose(/*objTargetDragon, objTargetICT, objTargetFlailMan, */objTargetFireHydrant));
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
