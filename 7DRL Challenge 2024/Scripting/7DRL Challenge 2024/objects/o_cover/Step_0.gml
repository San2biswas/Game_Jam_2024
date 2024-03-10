/// @description 

var tempT = 30
cover_timer = cover_timer + 1;
if cover_timer > tempT
{
	image_alpha = image_alpha - 0.012;

	if image_alpha < 0.002 
	{
		//instance_destroy(self)
		global.game_start = 1
		room_goto(Room1);
	}
	cover_timer = tempT;

}
