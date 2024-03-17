/// @description 

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
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





move_and_collide(move_x, move_y, obj_ground);

if (move_x != 0) image_xscale = sign(move_x);
