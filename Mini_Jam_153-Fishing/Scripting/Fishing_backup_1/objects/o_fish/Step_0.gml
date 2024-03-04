/// @description 

scr_controls()

if place_meeting(x, y, o_store_hook_rod) && key_space
{
	other.image_blend = c_lime
	y = y - (o_store_hook_rod.image_yscale * 1.12)
}
else
{
	other.image_blend = c_white
	y = born_y + (y - born_y)/1.08
}

if place_meeting(x, y, o_collision)
{
	instance_destroy(self);
}
