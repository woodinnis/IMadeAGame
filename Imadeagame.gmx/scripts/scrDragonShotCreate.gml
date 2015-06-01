// Give the object a speed
shotSpeed = 5;

// Set a target
targetX = objWeaponParent.x;
targetY = objWeaponParent.y;

// Start moving
move_towards_point(targetX,targetY,shotSpeed);
