globalvar P_System;         // Global variable to contain a particle system
globalvar P_FireBreath;     // Global variable to create a particle system
globalvar particle1;        // GLobal variable for a particle
globalvar partFireBreath;   // Global variable for the Fire Breath particle

P_System = part_system_create();

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.10,0.30,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,8454143,255,4210816);
part_type_alpha2(particle1,0.20,1);
part_type_speed(particle1,1,1,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);

/*
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_stream(Sname,emitter1,particle1,5);
*/

P_FireBreath = part_system_create();

partFireBreath = part_type_create();
part_type_shape(partFireBreath,pt_shape_spark);
part_type_size(partFireBreath,0.10,0.40,0,0);
part_type_scale(partFireBreath,2,1);
part_type_color3(partFireBreath,255,33023,65535);
part_type_alpha1(partFireBreath,0.80);
part_type_speed(partFireBreath,1,1,0,0);
part_type_direction(partFireBreath,200,240,0,0);
part_type_gravity(partFireBreath,0,180);
part_type_orientation(partFireBreath,0,0,0,0,1);
part_type_blend(partFireBreath,1);
part_type_life(partFireBreath,0,60);
