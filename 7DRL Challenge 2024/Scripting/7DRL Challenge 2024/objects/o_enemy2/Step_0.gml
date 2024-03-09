/// @description 

if place_meeting(x, y, o_enemy or o_enemy2 or o_wall or o_outside)
{
	instance_destroy(other);
	global.enemy2_c --;
}
