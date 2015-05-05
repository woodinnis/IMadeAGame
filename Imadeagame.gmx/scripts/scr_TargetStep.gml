// Code to execute with each step

// When target strength reaches 0 destroy instance and increase score by 10
if(myStrength <= 0)
{
    G_playerScore += pointValue;
    part_particles_create(P_System, x, y, particle1, 40);
    instance_destroy();
}