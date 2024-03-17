/// @description 
scr_controls();


move_x = key_d - key_a;
move_x *= move_speed;

if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
	if key_space 
	{
		y = y - 24;
		global.fall = global.gravity + 1;
		move_y = -jump_speed;
	}
	if !place_meeting(x-2, y, obj_ground)
	{
		x = x - 1;
	}

	if !place_meeting(x+2, y, obj_ground)
	{
		x = x + 1;
	}
	
}
else if (move_y < 10) move_y += 1;




if place_meeting(x, y+1, obj_ground)
{
	y = y - 1;
}



if place_meeting(x, y-2, obj_ground)
{
	y = y + 1;
	
}



global.fall = global.fall - 0.05;
if global.fall <0 global.fall = 0;


move_and_collide(move_x, move_y, obj_ground);

if (move_x != 0) image_xscale = sign(move_x);
