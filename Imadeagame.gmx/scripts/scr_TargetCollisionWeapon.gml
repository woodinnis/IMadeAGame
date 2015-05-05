// Code to execute on collision with a weapon object

// Reduce total strength by the myDamage value of the weapon
if(myStrength > 0)
{
    myStrength -= other.myDamage;
}
