/// @description 



if place_meeting(x, y, o_gate)
{
	instance_destroy(other);
	
	
	#region npc generate
	
	
	start_location_x = floor(random_range(15, 17))
	start_location_y = floor(random_range(3, 10))
	
	instance_create_layer(start_location_x*global.tileSize+global.tileSize, start_location_y*global.tileSize+global.tileSize, "lr_generate",o_npc)
	
	
	
	#endregion npc generate end
	
}


if place_meeting(x, y, o_player)
{
	instance_destroy(other);
}
