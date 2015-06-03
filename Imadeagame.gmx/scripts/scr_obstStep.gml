// When a weapon is within a certain range, cause it to arc around the obstacle
if(instance_exists(objWeaponParent))
{
    if(point_in_circle(objWeaponParent.x, objWeaponParent.y, x, y, checkRange))
    {
        with(objWeaponParent)
        {
            F_orbit(other.x, other.y, other.orbitRange, other.orbitSpeed);
        }
              
    }
}
