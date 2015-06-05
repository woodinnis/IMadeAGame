// Spawn a target into the play area
randomize();

// Assign the object name to a variable
spawnPoint = argument0;

spawnCount = instance_number(spawnPoint);
mySpawn = instance_find(spawnPoint,random(spawnCount));

tg = instance_create(mySpawn.x,mySpawn.y,choose(/*objTargetDragon, objTargetICT, objTargetFlailMan, */objTargetFireHydrant));

return tg;
