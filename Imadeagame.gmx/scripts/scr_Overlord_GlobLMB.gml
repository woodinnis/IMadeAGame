// Create a new instance of the current weapon when the player clicks somewhere in the game field
if(!instance_exists(objWeaponParent))
{
    spawnX = device_mouse_x(0);
    spawnY = device_mouse_y(0);
            
    instance_create(spawnX, spawnY, G_currentWeapon);
        
    // If target is a dragon, spawn FireBreath particle
    if(newTarget == objTargetDragon)
    {   
        with(currentTarget)
        {
            pd1 = point_direction(x,y, other.spawnX-15,other.spawnY-15);
            pd2 = point_direction(x,y, other.spawnX+15,other.spawnY+15)
            
            ad = angle_difference(pd1, pd2);
            if(pd1 > 120 && pd2 < 270)
                part_type_direction(partFireBreath,pd1-20,pd2+20,0,0);
        }
    }
}
else
{

}
