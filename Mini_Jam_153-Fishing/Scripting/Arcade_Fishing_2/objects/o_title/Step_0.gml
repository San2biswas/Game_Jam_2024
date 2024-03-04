/// @description 

scr_controls()

if global.fish_collected == 7
{
	game_restart()
	global.game_win_timer = 240
}

global.game_win_timer = global.game_win_timer - 1
if global.game_win_timer < 0 global.game_win_timer = 0




if keyboard_check_pressed(vk_anykey) && global.game_win_timer == 0
{
	instance_deactivate_object(o_title)

}


