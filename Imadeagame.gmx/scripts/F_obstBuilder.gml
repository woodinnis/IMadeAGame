/**
//  
//  Function for the construction of obstacles in levels
//  Retrieves name of material to be used in obstacle construction, and creates an array
//
**/

// Variable declaration and Settings

obstacle = argument0

obstCount = instance_number(obstacle);

A_Obst[obstCount - 1] = 0;
A_ObstLoc[obstCount - 1,0] = 0;

for(i = 0; i < obstCount; i++)
{
    A_Obst[i] = instance_find(obstacle, i);
}

for(j = 0; j < obstCount; j++)
{
    A_ObstLoc[j,0] = A_Obst[j].x;
    A_ObstLoc[j,1] = A_Obst[j].y;
}

