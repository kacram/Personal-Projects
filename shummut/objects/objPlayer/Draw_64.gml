
///------------------------------------------draw hp circle bar-------------------------------------------------
{
	var circleHp = hp;
	var circleMp = mana;
	//declare local variables
	var xx, yy, hpr, mpr, xOffset, yOffset;

	//set radius and offset of the circle
	hpr = 100;
	
	mpr = 120;
	
	xOffset = view_get_wport(0) - 125;
	yOffset = view_get_hport(0) - 125;

	//set circle hp to max circle hp
	if(circleHp >= maxCircleHp){
	
		circleHp = maxCircleHp;
	
	}
	
	if(circleMp >= maxCircleMp){
	
		circleMp = maxCircleMp;
	
	}
	circleMp *= 2.67;
	
	//declare and set circle precision
	var circlePrecision;
	circlePrecision = 4;
	
	//draw the background for the mana bar
	for(i = 0; i < (maxMana / maxCircleMp * 236 + 2) * circlePrecision; i++){
		
		//set the x and y of the line to draw
		xx = sin(degtorad((i + 124 * circlePrecision) / circlePrecision)) * mpr * 1.03;
		yy = cos(degtorad((i + 124 * circlePrecision) / circlePrecision)) * mpr * 1.03;
	

		//set the draw color and draw the line
		draw_set_color(c_gray);
		draw_line(xOffset - xx / 1.26, yOffset + yy / 1.26, xOffset - xx, yOffset + yy);
		
		if(i >= 236 * circlePrecision){
			
			break;
			
		}
		
	}
	
	//begin a for loop to draw the player mana bar
	for(i = 0; i < circleMp / maxCircleHp * 236 * circlePrecision + 2; i++){
		
		//set the x and y of the line to draw
		xx = sin(degtorad((i + 125 * circlePrecision) / circlePrecision))*mpr;
		yy = cos(degtorad((i + 125 * circlePrecision) / circlePrecision))*mpr;
	

		//set the draw color and draw the line
		draw_set_color(c_blue);
		draw_line(xOffset - xx / 1.2, yOffset + yy / 1.2, xOffset - xx, yOffset + yy);
		
		if(i >= maxCircleHp * circlePrecision){
			
			break;
			
		}
		
	}
	
	//draw the background for the hp bar
	for(i = 0; i < (maxHp / maxCircleHp * 272) * circlePrecision; i++){
		
		//set the x and y of the line to draw
		xx = sin(degtorad((i + 89 * circlePrecision) / circlePrecision)) * hpr * 1.03;
		yy = cos(degtorad((i + 89 * circlePrecision) / circlePrecision)) * hpr * 1.03;
	

		//set the draw color and draw the line
		draw_set_color(c_black);
		draw_line(xOffset - xx / 1.85, yOffset + yy / 1.85, xOffset - xx, yOffset + yy);
		
		if(i >= 270 * circlePrecision){
			
			break;
			
		}
		
	}
	
	//begin a for loop to draw player health
	for(i = 0; i < circleHp / maxCircleHp * 270 * circlePrecision; i++){
		
		//set the x and y of the line to draw
		xx = sin(degtorad((i + 90 * circlePrecision) / circlePrecision))*hpr;
		yy = cos(degtorad((i + 90 * circlePrecision) / circlePrecision))*hpr;
	

		//set the draw color and draw the line
		draw_set_color(c_red);
		draw_line(xOffset - xx / 1.7, yOffset + yy / 1.7, xOffset - xx, yOffset + yy);
	
	}
}

///----------------------------------------draw hp and mana bar------------------------------------------------
var barHp = hp - maxCircleHp;
var barMp = mana - maxCircleMp;


//              MANA
if(barMp <= 0){
	
	barMp = 0;
	
}
if(maxMana - maxCircleMp >= 0){
	
	draw_set_color(c_gray);
	draw_rectangle(xOffset + 1, yOffset + mpr / 1.215, xOffset - ((maxMana - maxCircleMp) * 2) - 1, yOffset + mpr + 3, false);
	
}
if(barMp != 0){
	
	draw_set_color(c_blue);
	draw_rectangle(xOffset + 1, yOffset + mpr / 1.19, xOffset - (barMp * 2) + 1, yOffset + mpr, false);
	
}



//              HP
if(barHp <= 0){
	
	barHp = 0;
	
}
if(maxHp - maxCircleHp >= 0){
	
	draw_set_color(c_black);
	draw_rectangle(xOffset + 1, yOffset + 56, xOffset - ((maxHp - maxCircleHp) * 0.8) - 1, yOffset + 103, false);
	
}
if(barHp != 0){
	
	draw_set_color(c_red);
	draw_rectangle(xOffset + 1, yOffset + 59, xOffset - (barHp * 0.8) + 1, yOffset + 100, false);
	
}



draw_set_color(c_blue);
draw_text(xOffset - 50,yOffset,"hp: " + string(hp) + "/" + string(maxHp));