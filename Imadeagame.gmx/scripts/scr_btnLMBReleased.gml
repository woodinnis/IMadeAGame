// The assorted buttom functions in the game
switch(object_get_name(object_index))
{
    // Start the first level
    case "objStartBtn":
    {
        room_goto(room_Level001);   // Go to the main game room
        break;
    }
    // Open the level select menu
    case "objLvlBtn":
    {
        room_goto(room_LevelSelect);
        break;
    }
    // Return to the main menu
    case "objMenuBtn":
    {
        game_restart();
        break;
    }
    // Open the help screen
    case "objHelpBtn":
    {
        if(needHelp == false)
        {
            image_index = 1;
            needHelp = true;
        }
        else
        {
            image_index = 0;
            needHelp = false;
        }
        break;
    }
    // Quit the game
    case "objQuitBtn":
    {
        game_end()  // End the game
        break;
    }
}
