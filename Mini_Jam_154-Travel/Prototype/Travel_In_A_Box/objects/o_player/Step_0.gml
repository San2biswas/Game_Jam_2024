/// @description 

scr_control();



if key_d
{
	if place_meeting(x + 1, y , o_world)
	{
		global.spd = 0;
	}
	else
	{
		global.spd = 1;
		hmv = 1;
	}

}


if key_a
{
	if place_meeting(x - 1, y , o_world)
	{
		global.spd = 0;
	}
	else
	{
		global.spd = 1;
		hmv = -1;
	}

}


if key_space && place_meeting(x, y + 2, o_world)
{
	y = y - 24;
	vmv = 1;
	global.fall = global.gravity + 1;
}






global.spd = global.spd - 0.01;
if global.spd < 0 global.spd = 0;


global.fall = global.fall - 0.05;
if global.fall <0 global.fall = 0;


x = x + global.spd * hmv




#region ground collision


//if place_meeting(x, y + 1, o_world)
//{
//	y = y - 1
//}


if !place_meeting(x, y + 2, o_world)
{
	y = y + global.gravity - global.fall
}


image_xscale = hmv;
	

#endregion ground collision end


