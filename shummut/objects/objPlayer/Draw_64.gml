
///--------------------------------------draw hp circle bar---------------------------------------------
{
	var circleHp = hp;
	//declare local variables
	var r, xx, yy, xOffset, yOffset;

	//set radius and offset of the circle
	r = 100;
	xOffset = view_get_wport(0) - 125;
	yOffset = view_get_hport(0) - 125;

	//set circle hp to max circle hp
	if(circleHp >= maxCircleHp){
	
		circleHp = maxCircleHp;
	
	}
	
	//draw background circle
	draw_set_color(c_gray);
	draw_circle(xOffset,yOffset,r+2,false)
	
	//declare and set circle precision
	var circlePrecision;
	circlePrecision = 4;

	//begin a for loop to draw player health
	for(i = 0; i < circleHp / maxCircleHp * 270 * circlePrecision ; i++){
		
		//set the x and y of the line to draw
		xx = sin(degtorad((i + 90 * circlePrecision) / circlePrecision))*r;
		yy = cos(degtorad((i + 90 * circlePrecision) / circlePrecision))*r;
	

		//set the draw color and draw the line
		draw_set_color(c_red);
		draw_line(xOffset - xx / 1.7, yOffset + yy / 1.7, xOffset - xx, yOffset + yy);
	
	}
}

///----------------------------------------draw hp bar--------------------------------------------------
var barHp = hp - maxCircleHp;
if(barHp <= 0){
	
	barHp = 0;
	
}
if(maxHp - maxCircleHp >= 0){
	
	draw_set_color(c_gray);
	draw_rectangle(xOffset, yOffset + 57, xOffset - ((maxHp - maxCircleHp) * 0.8) - 2, yOffset + 102, false);
	
}

if(barHp != 0){
	
	draw_set_color(c_red);
	draw_rectangle(xOffset, yOffset + 59, xOffset - (barHp * 0.8), yOffset + 100, false);
	
}

draw_set_color(c_blue);
draw_text(xOffset - 50,yOffset,"hp: " + string(hp) + "/" + string(maxHp));