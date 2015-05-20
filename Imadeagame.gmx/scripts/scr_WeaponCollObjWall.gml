//  Operations to perform upon colliding with objWall

//  Increment BounceCount
if(CanBounce)
{
    BounceCount++;
    alarm[0] = BounceTimer;
    CanBounce = false;
}

// Destroy object
if(BounceCount >= maxBounce)
    instance_destroy();
