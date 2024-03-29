if (place_meeting(x + hspeed, y, oWall) || place_meeting(x + hspeed, y, oPlayer) || place_meeting(x + hspeed, y, oEnemy)) 
{
    audio_play_sound(boing,1,false,1, 0, random_range(0.3,3));
}
if (place_meeting(x + hspeed, y, oWall)) {
    hspeed = -hspeed;
}

if (place_meeting(x, y + vspeed, oWall)) {
    vspeed = -vspeed;
}
if (place_meeting(x, y, oDeath)) && (!audio_is_playing(boom)) {
	instance_create_layer(x, y, "Inst", oGameOver);
	audio_play_sound(boom,1,false);
    hspeed = 0;
    vspeed = 0;
	if instance_exists(oGameOver)
	{
		instance_destroy(oBall)
	}
}