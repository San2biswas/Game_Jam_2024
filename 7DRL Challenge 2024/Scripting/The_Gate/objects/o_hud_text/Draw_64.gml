/// @description 


//#region debug


//draw_text(32, room_height-32, "instance : " + string(instance_count))
//draw_text(32*8, room_height-32, "wall : " + string(global.wall_c))
//draw_text(32*16, room_height-32, "enemy1 : " + string(global.enemy1_c))
//draw_text(32*24, room_height-32, "enemy2 : " + string(global.enemy2_c))
//draw_text(32*32, room_height-32, "enemy3 : " + string(global.enemy3_c))


//#endregion debug end

if global.game_start == 1
{
	draw_text(32*1, 32, "health : " + string(global.player_health))
}

