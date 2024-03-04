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
	o_store_hook_controler.sprite_index = s_store_hook_controler_collected
	global.fish_collected ++
	instance_destroy(self);
	layer_set_visible("fx_cam_shake", true)
	
}

if o_store_hook_controler.sprite_index == s_store_hook_controler_collected
{
	global.light_timer++
}

if global.light_timer > 300
{
	global.light_timer = 0
	o_store_hook_controler.sprite_index = s_store_hook_controler
	layer_set_visible("fx_cam_shake", false)
}

