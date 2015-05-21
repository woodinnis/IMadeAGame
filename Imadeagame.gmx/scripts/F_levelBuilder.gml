// Call multiple functions using input from a single source to build levels

levelNum = argument0;

obstCount = 0;
targetCount = 0;

if(!file_exists(working_directory + "\levels.ini"))
{
    // If no levels data file exists, create one
    file = ini_open(working_directory + "\levels.ini");
    ini_write_string("level001", "obst000", "");
    ini_close();
}
else
{
    // Open the levels data file for reading
    file = ini_open(working_directory + "\levels.ini");
    
    ini_close();
}

// Build the correct number of obstacles for the level
for(i = 0; i < obstCount; i++)
{
    //F_obstBuilder();
}

// Spawn the correct number of targets for the level
for(i = 0; i < targetCount; i++)
{
    //F_targetSpawn();
}

