// Code to execute with each step

// When target strength reaches 0 destroy instance and increase score by 10
if(myStrength <= 0)
{
    G_playerScore += pointValue;
    part_particles_create(P_System, x, y, particle1, 40);
    instance_destroy();
}

while(place_meeting(x, y, objWall)|| place_meeting(x, y, objObstParent))
    {
        show_debug_message("I'm touching something!");

        if(x > view_wview[0] || x <= view_wview[0] / 2)
        {
           x--;
        }
        else if(y > view_hview[0] || y <= view_hview[0] / 2)
        {
           y--;
        }
        else if(x <= 0 || x >= view_wview[0] / 2)
        {
           x++;
        }
        else if(y <= 0 || y >= view_hview[0] / 2)
        {
           y++;
        }
    }

