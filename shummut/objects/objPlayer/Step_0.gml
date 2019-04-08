

if(keyboard_check(vk_up)){
	
	hp += 1;
	if(hp >= maxHp){
		
		hp = maxHp;
		
	}
	
}

if(keyboard_check(vk_down)){
	
	hp -= 1;
	if(hp <= 0){
		
		hp = 0;
		
	}
	
}