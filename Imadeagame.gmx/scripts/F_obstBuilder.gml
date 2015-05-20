// Variable declaration and Settings

obstObject  = argument0; //  Material to use to build the obstacle

// Start coordinates of the obstacle
obstStartX  = argument1;
obstStartY  = argument2;

// Width and height of obstacle
obstWide    = argument3;
obstHigh    = argument4;

// Set start coordinates
x           = obstStartX;
y           = obstStartY;

// Get width/height of material to be used
sprWide     = sprite_get_width(object_get_sprite(wallObject));
sprHigh     = sprite_get_height(object_get_sprite(wallObject));

// Build an obstacle
for(i = 0; i < obstWide; i++)
{
    for(j = 0; j < obstHigh; j++)
    {
        instance_create(x,y,obstObject);
        y += sprHigh;
    }
    y = obstStartY;
    x += sprWide;
}

