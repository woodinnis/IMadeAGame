// Spawn a target into the play area

// Assign the object name to a variable
newTarget = argument0;

newX = 0;
newY = 0;

// Set target spawn locations based on height and width of the viewable area
targetSpawnX = view_wview[0];
targetSpawnY = view_hview[0];

// Set the current Target to a variable
while(!position_empty(newX,newY))
{
    newX = irandom(targetSpawnX);
    newY = irandom(targetSpawnY);   
}

if(!position_meeting(newX, newY, all))
    tg = instance_create(newX, newY, newTarget);

/*
with(tg)
{
    while(position_meeting(x,y, all))
    {
        if(x > view_wview[0])
        {
           x--;
        }
        else if(y > view_hview[0])
        {
           y--;
        }
        else if(x < 0)
        {
           x++;
        }
        else if(y < 0)
        {
           y++;
        }
    }
}
*/

return(tg);

