// Creation code for the Overlord

// Apply physics to the world
physics_world_create(1/32);

// Set the cursor to invisible
//window_set_cursor(cr_none);

globalvar G_currentWeapon;  // Global variable for current weapon
globalvar G_playerScore;    // Global variable to contain the player's current score
globalvar G_winScore;       // Global variable to represent a winning score

G_currentWeapon = objWeaponShoe;
G_playerScore = 0;

playerWin = false;
