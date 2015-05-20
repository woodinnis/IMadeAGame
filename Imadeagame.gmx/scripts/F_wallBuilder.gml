// Variable Declaration and Settings

wallObject = argument0; //  Material to use to build the wall

x = 0;
y = 0;
sprWide     = sprite_get_width(object_get_sprite(wallObject));
sprHigh     = sprite_get_height(object_get_sprite(wallObject));
spawnCountW = room_width/sprWide;
spawnCountH = room_height/sprHigh;

// Build the walls
if(x = 0)
{
    for(i = 0; i <= spawnCountW; i++)
    {
        instance_create(x,y,wallObject);
        x += sprWide;
    }
    x = 0;
    for(i = 0; i < spawnCountH; i++)
    {
        instance_create(x,y,wallObject);
        y += sprHigh;
    }
}

for(i = 0; i < spawnCountW; i++)
{
    instance_create(x,y,wallObject);
    x += sprWide;
}
y = 0;
for(i = 0; i <= spawnCountH; i++)
{
    instance_create(x,y,wallObject);
    y += sprHigh;
}
