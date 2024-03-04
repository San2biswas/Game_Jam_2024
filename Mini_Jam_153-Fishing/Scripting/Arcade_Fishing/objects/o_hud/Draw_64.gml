/// @description 

//draw_text(20, 20, o_store_hook_rod.image_yscale)
//draw_text(20, 40, o_store_hook_rod.x)
//draw_text(80, 40, o_store_hook_rod.y)


//draw_sprite(s_fish_s, 0, 580,30)

if !instance_exists(o_title)
{
	draw_set_font(fnt_score)
	draw_text(110, 250, global.fish_collected)
}

