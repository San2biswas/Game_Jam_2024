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
	if global.fish_collected == 7
	{
		layer_set_visible("fx_cam_shake", false)
		instance_activate_object(o_title)
	}
	audio_play_sound(pickupCoin, 10, false, 0.4)
	
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


if keyboard_check_pressed(vk_space)
{
	
	if place_meeting(x, y, o_store_hook_rod)
	{
		audio_play_sound(blipSelect, 10, false, 0.2)
	}
	else
	{
		audio_play_sound(synth, 10, false, 0.01)
	}
}

