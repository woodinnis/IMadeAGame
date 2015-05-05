// Code to execute on each step

// If no target is present in the room, spawn a new target
if(instance_exists(objTargetParent))
{
    // Do nothing
}
else
{
    // Assign the object name to a variable
    newTarget = choose(objTargetDragon, objTargetICT, objTargetFlailMan, objTargetFireHydrant);
    
    // Set the current Target to a variable    
    currentTarget = instance_create(room_width/2, room_height/2, newTarget);
}
