// Creation code for the Overlord

// Apply physics to the world
physics_world_create(1/32);

// Set the cursor to invisible
//window_set_cursor(cr_none);

globalvar G_currentWeapon;  // Global variable for current weapon
globalvar G_playerScore;    // Global variable to contain the player's current score
globalvar G_winScore;       // Global variable to represent a winning score

// Set starting variables
G_currentWeapon = objWeaponShoe;    // Starting weapon
G_playerScore = 0;                  // Stating score
shotCount = 0;                      // Shot count
canShoot = true;

// Win/Lose check
playerWin = false;


