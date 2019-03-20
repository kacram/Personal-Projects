/// @description do stuff
// You can write your code in this editor

if(keyboard_check(ord("W")) && vspd <= 0){
	grav = lowGrav;
}
else{
	grav = normGrav;
}

//check for floor
vspd += grav;
if (vspd >= 0){	
	grounded = !place_free(x,y+abs(vspd))
	if (grounded == true){
		vspd = 0;
		while(1==1){
			if (!place_free(x,y+1)){
				break;
			}
			else{
				y+=1;
			}
		}
	}
}


//add horizontal speed
dir = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
hspd = dir * spd;

//check for wall
isWall = !place_free(x+hspd,y);
if (isWall){
	while(1==1){
		if (!place_free(x+dir,y)){
			hspd = 0;
			break;
		}
		else{
			x += dir;	
		}
	}
}

//jump
if (!place_free(x,y+1)){
	if(keyboard_check_pressed(ord("W"))){
		vspd -= jump;
	}
}

//check for cieling
if (vspd <= 0){
	ceiling = !place_free(x,y+vspd);
	if (ceiling == true){
		vspd = 0;
		while (1==1){
			if (!place_free(x,y-1)){
				break;
			}
			else{
				y-=1;
			}
		}
	}
}

y+= vspd;
x+= hspd;

//check if inside solid object
if (!place_free(x,y)){
	if(place_free(x+spd,y)){
		while (!place_free(x,y)){
			x+=1;
		}
	}
	else if(place_free(x-spd,y)){
		while (!place_free(x,y)){
			x-=1;
		}
	}
	else if(place_free(x,y-spd)){
		while (!place_free(x,y)){
			y-=1;
		}
	}
	else{
		while (!place_free(x,y)){
			y-=1;
		}
	}
}