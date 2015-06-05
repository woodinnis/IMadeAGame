// Room Start script
randomize();

maxShots = irandom_range(3,10);     // Set a new maximum shots
G_playerScore = 0;                  // Reset score
shotCount = 0;                      // Reset shot count

if(!view_enabled)
{
    view_enabled = true;
    view_visible[0] = true;
}
//F_obstBuilder(objWall,200,100,5,2);
