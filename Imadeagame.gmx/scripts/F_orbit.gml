dir_now = point_direction(argument0,argument1,x,y);
dir_new = (dir_now + argument3 + 360)mod(360);
x = lengthdir_x(argument2,dir_new) + argument0;
y = lengthdir_y(argument2,dir_new) + argument1;
