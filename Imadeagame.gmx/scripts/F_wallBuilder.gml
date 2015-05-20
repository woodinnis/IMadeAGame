// Variable Declaration and Settings

wallObject = argument0; //  Material to use to build the wall

spawnX = 0;
spawnY = 0;
sprWide     = sprite_get_width(object_get_sprite(wallObject));
sprHigh     = sprite_get_height(object_get_sprite(wallObject));
spawnCountW = room_width/sprWide;
spawnCountH = room_height/sprHigh;

// Build the walls
if(spawnX = 0)
{
    for(i = 0; i <= spawnCountW; i++)
    {
        instance_create(spawnX,spawnY,wallObject);
        spawnX += sprWide;
    }
    spawnX = 0;
    for(i = 0; i < spawnCountH; i++)
    {
        instance_create(spawnX,spawnY,wallObject);
        spawnY += sprHigh;
    }
}

for(i = 0; i < spawnCountW; i++)
{
    instance_create(spawnX,spawnY,wallObject);
    spawnX += sprWide;
}
spawnY = 0;
for(i = 0; i <= spawnCountH; i++)
{
    instance_create(spawnX,spawnY,wallObject);
    spawnY += sprHigh;
}
