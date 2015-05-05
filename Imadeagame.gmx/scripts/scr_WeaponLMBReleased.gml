// When LMB is released apply a physics impulse
if(canFire)
    physics_apply_impulse(-dragX,-dragY,x-dragX,y-dragY);
