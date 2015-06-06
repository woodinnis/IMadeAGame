// Code to execute on each step

// If player score is less that current winning score continue to spawn new targets
// Otherwise set win state to true

// Check to see that the current room is a valid level
if(room != room_Start && room != room_LevelSelect)
{
    if(G_playerScore < G_winScore && !playerLose)
    {
        // If no target is present in the room, spawn a new target
        if(!instance_exists(objTargetParent))
        {   
            if(instance_exists(objTargetSpawn))
            {
                currentTarget = F_targetSpawn(objTargetSpawn);
            }
            newTarget = currentTarget;
            // I'd still like to find a way to place all these names into an array
        }
    }
    else if(G_playerScore >= G_winScore)
    {
        if(room_next(room) != -1)
        {
            room_goto(room_next(room));
        }
    }
}

// Check to see if the player has exceeded the shot limit for this level
if(shotCount > G_shotLimit)
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
        instance_create(wide/2, high * 0.75, objMenuBtn);
    }
}
