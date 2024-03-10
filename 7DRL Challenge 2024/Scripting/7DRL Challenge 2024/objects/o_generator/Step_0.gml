/// @description 

scr_controls();

if global.game_start == 1
{
	#region wall generate


start_location_x = floor(random_range(2, 18))
start_location_y = floor(random_range(2, 12))


if (instance_count<60)
{
    instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_wall)
	global.wall_c ++;
}


#endregion wall generate end
	
	
	#region enemy1 generate


start_location_x = floor(random_range(5, 17))
start_location_y = floor(random_range(3, 11))


if (instance_count>59)&&(instance_count<65)
{
	instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_enemy)
	global.enemy1_c ++;
}


#endregion enemy1 generate end
	
	
	#region enemy2 generate


start_location_x = floor(random_range(9, 17))
start_location_y = floor(random_range(3, 11))


if (instance_count>64)&&(instance_count<80)
{
	instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_enemy2)
	global.enemy2_c ++;
}


#endregion enemy2 generate end
	
	
	#region enemy3 generate #traps


start_location_x = floor(random_range(1, 17))
start_location_y = floor(random_range(2, 12))


if (instance_count>69)&&(instance_count<90)
{
	instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_enemy3)
	global.enemy3_c ++;
}


#endregion enemy3 generate end
	
}
