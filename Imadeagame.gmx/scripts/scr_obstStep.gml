// When a weapon is within a certain range, cause it to arc around the obstacle
if(instance_exists(objWeaponParent))
{
    if(point_in_circle(objWeaponParent.x, objWeaponParent.y, x, y, orbitRange))
    {
        with(objWeaponParent)
        {
            F_orbit(objRedirSmall.x, objRedirSmall.y, orbitRange, orbitSpeed);
        }
    }
}
