/// @description Insert description here
// You can write your code in this editor


if keyboard_check(KeyLeft)
{
	Hspd -= Speed;	
}
if keyboard_check(KeyRight)
{
	Hspd += Speed;
}
if keyboard_check_pressed(KeySword)
{
	image_index = 0;
	State = "sword";	
}


if (State = "standing")
{
	if (Hspd != 0)
	{
		sprite_index = sprRunning;
		image_xscale = sign(Hspd);
	}
	else
	{
		sprite_index = sprStanding;	
	}
	
}
if (State = "sword")
{
	Hspd = image_xscale * 4;
	sprite_index = sprSword;
	if (image_index >= 3)
	{
		State = "standing";
	}
}

	x += Hspd;
	y += Vspd;
	Hspd = 0;
	Vspd = 0;