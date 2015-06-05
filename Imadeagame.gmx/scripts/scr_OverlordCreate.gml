// Creation code for the Overlord

// Apply physics to the world
//physics_world_create(1/32);

// Set mobile specific variables
device_mouse_dbclick_enable(true);  // Detect a double-left click as a right click

// Set the cursor to invisible
//window_set_cursor(cr_none);

globalvar G_currentWeapon;  // Global variable for current weapon
globalvar G_playerScore;    // Global variable to contain the player's current score
globalvar G_winScore;       // Global variable to represent a winning score
globalvar G_shotLimit;      // Global variable indicating the maximum number of shots allowed

// Set starting variables
G_currentWeapon = objWeaponShoe;    // Starting weapon
G_playerScore = 0;                  // Starting score
G_shotLimit = 0;                    // Starting shot limit
shotCount = 0;                      // Shot count
maxShots = 0;                       // Total shots allowed
isPaused = false;                   // Is the game paused

// Win/Lose check
playerWin = false;
playerLose = false;

// Reset x and y
x = 0;
y = 0;
