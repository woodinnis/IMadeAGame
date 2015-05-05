// Code to execute on each step

// If a target is present in the room but a weapon is not, spawn a weapon
if(instance_exists(objTargetParent))
{
    if(!instance_exists(objWeaponParent))
    {
        randomize();
        
        spawnX = irandom_range(32, room_width - 32);
        spawnY = irandom_range(32, room_height - 128 - 32);
                
        instance_create(spawnX, spawnY, G_currentWeapon);
    }
}
else
{
    // Assign the object name to a variable
    newTarget = choose(objTargetDragon, objTargetICT, objTargetFlailMan, objTargetFireHydrant);
    
    // Set the current Target to a variable    
    currentTarget = instance_create(room_width/2, room_height/2, newTarget);
}