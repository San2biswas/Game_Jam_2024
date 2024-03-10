/// @description 


global.tileSize = 64
start_location_x = 0
start_location_y = 0

tile_multi = room_width/global.tileSize

global.wall_c = 0;
global.enemy1_c = 0;
global.enemy2_c = 0;
global.enemy3_c = 0;

global.level = 0;



#region player generate


start_location_x = floor(random_range(3, 5))
start_location_y = floor(random_range(4, 10))


instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_player)


#endregion wall generate end


#region gate generate


start_location_x = floor(random_range(15, 17))
start_location_y = floor(random_range(3, 10))


instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_gate)


#endregion gate generate end


#region npc generate


start_location_x = floor(random_range(15, 17))
start_location_y = floor(random_range(3, 10))

instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_npc)



#endregion npc generate end

