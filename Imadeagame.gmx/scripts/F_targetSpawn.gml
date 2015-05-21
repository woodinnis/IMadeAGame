// Spawn a target into the play area

// Assign the object name to a variable
newTarget = argument0;

// Set target spawn locations based on height and width of the room, and the target
targetSpawnX = room_width - sprite_get_width(newTarget);
targetSpawnY = room_height - sprite_get_height(newTarget);
    
// Set the current Target to a variable    
tg = instance_create(random(targetSpawnX), random(targetSpawnY), newTarget);

return(tg);
