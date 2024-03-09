/// @description 

if place_meeting(x, y, o_wall)
{
	instance_destroy(other);
	global.enemy1_c --;
}



if place_meeting(x, y, o_enemy)
{
	instance_destroy(other);
	global.enemy1_c --;
}

