// Creation code for the Weapon Parent object

dragged = false;
canFire = false;

// Set the drag coordinates to 0
dragX = 0;
dragY = 0;

// Variables for the Collision Event with objWall
BounceCount = 0;
BounceTimer = 4;
CanBounce = true;
maxBounce = 6;

move_bounce_solid(true);    // Bounce off of solid objects;
