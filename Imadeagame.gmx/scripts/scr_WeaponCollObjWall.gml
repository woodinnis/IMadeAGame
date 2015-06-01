//  Operations to perform upon colliding with objWall

//  Increment BounceCount
if(CanBounce)
{
    move_bounce_all(false);    // Bounce off of solid objects;
    BounceCount++;
    alarm[0] = BounceTimer;
    CanBounce = false;
}

// Destroy object
if(BounceCount >= maxBounce)
    instance_destroy();
