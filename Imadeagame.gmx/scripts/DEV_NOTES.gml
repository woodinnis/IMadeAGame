/* LD JAM 32

Apr 17 2015

Theme: An Unconventional Weapon

Destroy a target using an assortment of bizarre objects

Necessary assets:
- Targets
    - Parent object complete
    - Four Target types + 1 default
    - Four placeholder sprites + 1 default
- Weapons
    - Parent object complete
    - Four Weapon types + 1 default
    - Four placeholder sprites + 1 default
- Player
- Environment
- Sound

Basic gameplay functional
- Clicking on a weapon causes it to move towards a target.
- Each weapon can be individually assigned a damage value
- Each target can be individually assigned a strength value
- When a weapon hits a target it automatically deducts that weapon's damage value from the target's strength
- When a weapon hits a target the object is destroyed
- When a target's strength reaches 0, it is destroyed
- If a weapon is destroyed but a target still remains, a new weapon will spawn
- When a target is destroyed, the game will restart

// May 4, 2015

May the fourth be with us

16:50 - Slingshot is functional
    - Used physics_apply_impulse() to create a slingshot
    - All objects now have physics (rooms, Weapons, Targets)
        - Targets have 8000 density in order to avoid moving when hit
    - dragged, canShoot booleans now used to pre-check before firing
    
// May 5, 2015

13:37   Click-to-place weapons functional
        - Weapons no longer spawn on room start
        - Clicking anywhere in the play area will spawn a weapon
            - Slingshot mechanics are available immediately at spawn time

13:50   Targets now spawn in random locations in the play area

15:08   Win condition implemented
        - G_winScore set at room start, in room creation code
        - G_playerScore checked against G_winScore before each target spawns
        - playerWin boolean checked on objOverlord DrawGUI Event
        
16:38   objTargetFireHydrant now spawns a water jet that stops player motion
        - objHydrantShot is instantiated every 2 seconds
        
// May 11, 2015

15:17   New particle added to objTargetDragon

16:17   Configured particle emitter to fire in direction of mouse click

17:00   FireBreath pariticle now only fires within a specified range
        - Emitter is between the top and bottom of the sprite, on the "head" side
        - Emitter will only change direction if LMB Click is within the specified range
        
// May 14, 2015

10:22   Preparing to add bouncing to objWeaponParent
        - Weapons should bounce off of walls, and certain obstacles (to be added later)
        
12:24   Basic bouncing physics implemented
        - sprWeapon changed to sprWall
        - objWeapon changed to objWall
        - objWall made solid, and given physics properties
        - F_wallBuilder function uses any object argument to build walls around the room
        - move_bounce_solid(true) added to Create Event of objWeaponParent
        
// May 20, 2015

9:53    Added F_obstacleBuilder
        - Obstacles can now be built using any existing game object.
        - Heavily based on F_wallBuilder
        - Only builds quad objects, but can be used n times to build almost anything
        
10:38   Added scr_WeaponCollObjWall
        - Weapons now count bounces with any objWall
            - Would be good to make this ANY object spawned by F_wallBuilder/F_obstBuilder
        - Weapons are destroyed when BounceCount reaches maxBounce
        - maxBounce is currently set in WeaponParentCreate, but can be set individually for each weapon
        
11:12   Adjusted physics properties of all weapons
        - Densities adjusted to ~kg/m^2 of each weapon
            - WeaponCountry is the only exception
        - Restitution to 0.9
        - All other properties to 0
        
11:36   Fixed a minor bug where double-clicking would add extra force to a weapon
        - Reset canFire to false in scr_WeaponLMBReleased
