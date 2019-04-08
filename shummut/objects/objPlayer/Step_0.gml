

if(keyboard_check(vk_up)){
	
	hp += hpScaleSpeed;
	if(hp >= maxHp){
		
		hp = maxHp;
		
	}
	
}

if(keyboard_check(vk_down)){
	
	hp -= hpScaleSpeed;
	if(hp <= 0){
		
		hp = 0;
		
	}
	
}