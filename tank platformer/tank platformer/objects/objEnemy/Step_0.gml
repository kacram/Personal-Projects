/// @IM DOIN STUFF! YEET!
// You can write your code in this editor

//check for a colision
if (!place_free(x+dir,y)){
	dir = -dir;
}
if (place_free(x+dir*64,y+10)){
	dir = -dir;
}

//set speed
hspd = dir*spd;


var player = collision_line(x,y,x+(dir*800),y,objPlayer,false,true);
if(player != noone)
{
	hspd = 0;
	tic--;
	show_debug_message(tic);
	if(tic <= 0){
		var bullet = instance_create_layer(x,y,layer,objBullet);
		bullet.hspd = dir * 10;
		tic = shotTimer;
		show_debug_message("bang");
	}
}

//move
x += hspd;