/// @description 


start_location_x = floor(random_range(2, 18))
start_location_y = floor(random_range(2, 12))


if (instance_count<10)
{
    instance_create_depth(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, -10,o_wall)
}


