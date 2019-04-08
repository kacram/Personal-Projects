
var circlePrecision;

circlePrecision = 4;

for(i = 0; i < hp / maxHp * 360 * circlePrecision; i++){
	
	var r, xx, yy, xOffset, yOffset;
	r = 50;
	xOffset = 125;
	yOffset = 125;
	
	draw_set_color(c_white);
	
	xx = sin(degtorad(i / circlePrecision))*r;
	yy = cos(degtorad(i / circlePrecision))*r;
	
	draw_line(xOffset, yOffset, xOffset + xx, yOffset + yy);
	
	
}