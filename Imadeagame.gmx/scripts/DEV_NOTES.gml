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
