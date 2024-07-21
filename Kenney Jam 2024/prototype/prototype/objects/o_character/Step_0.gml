scr_controls();

hspd = key_d - key_a;
if hspd != 0	image_xscale = -2*hspd;
if !place_meeting(x+2*hspd, y-2, o_coll_wall){
	x = x + hspd*phspd;
}

if !place_meeting(x, y+1, o_coll_wall){
	y = y + grvt;
}
else
{
	if key_space{
		y = y - vspd;
	}
}

#region player state

pStateTimer ++;
if hspd == 0{
	pState = PLAYER_STATE.energetic;
	if pStateTimer > (180)	pState = PLAYER_STATE.idle;
}
else
{
	pState = PLAYER_STATE.moving;
	pStateTimer = 0;
}

pIdleTimer ++;
if pIdleTimer > 359 pIdleTimer = 0;
image_yscale = image_yscale - ((cos(pIdleTimer/(6*pIdleAnimSpeed)))/60)*pIdleAnim;


switch(pState) {
	case PLAYER_STATE.idle:
		sprite_index = s_player_idle;
		image_speed = 0;
		image_index = 0;
		pIdleAnim = 0.3;
		pIdleAnimSpeed = 5;
	break;

	case PLAYER_STATE.energetic:
		sprite_index = s_player_energetic;
		image_speed = 0;
		image_index = 0;
		pIdleAnim = 1;
		pIdleAnimSpeed = 1;
	break;

	case PLAYER_STATE.moving:
		sprite_index = s_player_moving;
		image_speed = 1;
		pIdleAnim = 0;
	break;

	case PLAYER_STATE.jumping:
		sprite_index = s_player_jumping;
		image_speed = 1;
		pIdleAnim = 0;
	break;

}

#endregion player state end
