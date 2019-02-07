/// @description do stuff
// You can write your code in this editor

//check for floor
vspd += grav;
if (vspd <= 0){	
	grounded = !place_free(x,y+vspd);
	show_debug_message(grounded);
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
if (grounded == true){
	if(keyboard_check_pressed(ord("W"))){
		vspd -= jump;
	}
}

y+= vspd;
x+= hspd;