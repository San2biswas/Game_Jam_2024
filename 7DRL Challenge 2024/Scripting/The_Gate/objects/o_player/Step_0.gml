/// @description 

scr_controls();


#region player movement and avoid wall


if (key_a)		
{
	x = x - p_spd
	if place_meeting(x, y, o_wall)		x = x + p_spd
}

if (key_d)		
{
	x = x + p_spd
	if place_meeting(x, y, o_wall)		x = x - p_spd
}

if (key_w)		
{
	y = y - p_spd
	if place_meeting(x, y, o_wall)		y = y + p_spd
}

if (key_s)		
{
	y = y + p_spd
	if place_meeting(x, y, o_wall)		y = y - p_spd
}


#endregion player movement and avoid wall end


#region level change


if place_meeting(x, y, o_gate) and global.key = 1
{
	audio_play_sound(pickupCoin, 10, false)
	global.key = 0;
	room_restart();
}


#endregion level change end


#region player dammage


if place_meeting(x, y, o_enemy3)
{
	global.player_health = global.player_health - 10
	audio_play_sound(synth, 10, false)
}


if place_meeting(x, y, o_enemy)
{
	global.player_health = global.player_health - 20
	audio_play_sound(synth, 10, false)
}


if place_meeting(x, y, o_bullet)
{
	global.player_health = global.player_health - 5
	audio_play_sound(blipSelect, 10, false)
}


if place_meeting(x, y, o_npc)
{
	global.player_health = global.player_health + 15
	global.key = 1;
	audio_play_sound(pickupCoin, 10, false)
}


#endregion player dammage end




if global.player_health < 0	
{
	global.player_health = 0;
	//layer_set_visible("fx_cam_shake", true)
	room_restart();
}
if global.player_health > 100		global.player_health = 100;


