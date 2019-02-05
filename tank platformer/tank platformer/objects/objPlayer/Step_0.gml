/// @description do stuff
// You can write your code in this editor

//check for floor
vspd += grav;
grounded = !place_free(x,y+vspd);
if (grounded == true){
	while(1==1){
		if (!place_free(x,y+1)){
			break;
		}
		else{
			y+=1;
		}
	}
}

//jump
if (grounded == true){
	if(keyboard_check(ord("W"))){
		vspd -= jump;
	}
}

y+= vspd;
x+= hspd;