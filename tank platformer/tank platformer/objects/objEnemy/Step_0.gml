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

//move
x += hspd;