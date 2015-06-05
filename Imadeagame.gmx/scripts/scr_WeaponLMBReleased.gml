// When LMB is released begin moving
if(canFire)
{   
    moveSpeed = distance_to_point(dragX, dragY);
    if(moveSpeed >= speedLimit)
        moveSpeed = speedLimit;

    if(device_mouse_x(0) != x && device_mouse_y(0) != y)
    {
        pdir = point_direction(x,y, dragX, dragY);
        motion_set(pdir - 180, moveSpeed);
    }
    
    canFire = false;
}
