/// @description 

// Inherit the parent event
event_inherited();

scr_controls();

if key_a or key_d or key_w or key_s
{
	bullet_timer ++;
	
	var bTmr = 4 
	
	if bullet_timer > bTmr		bullet_timer = 0;
	
	if bullet_timer == bTmr
	{
		instance_create_layer(x, y, "lr_generate",o_bullet)
		global.bullet ++;
	}
	
}
