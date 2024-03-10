/// @description 


if place_meeting(x, y, o_enemy)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_enemy2)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_enemy3)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_wall)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_outside)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_player)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_gate)
{
	instance_destroy(other);
	global.enemy3_c --;
}


if place_meeting(x, y, o_npc)
{
	instance_destroy(other);
	global.enemy3_c --;
}
