/// @description 

scr_controls();


if key_a or key_d or key_w or key_s
{
	x = x -16
}


if place_meeting(x, y, o_wall)
{
	instance_destroy(other);
}


if place_meeting(x, y, o_player)
{
	instance_destroy(other);
}
