/// @description 


if place_meeting(x, y, o_wall)
{
	instance_destroy(other);
	global.wall_c --;
}


if place_meeting(x, y, o_gate)
{
	instance_destroy(other);
	global.wall_c --;
}


if place_meeting(x, y, o_npc)
{
	instance_destroy(other);
	global.wall_c --;
}



if place_meeting(x, y, o_player) && instance_count<60
{
	instance_destroy(other);
	global.wall_c --;
}
