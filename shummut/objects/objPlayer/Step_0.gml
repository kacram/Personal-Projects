

if(keyboard_check(vk_up)){
	
	hp += hpScaleSpeed;
	
}

if(hp >= maxHp){
		
	hp = maxHp;
		
}

if(keyboard_check(vk_down)){
	
	hp -= hpScaleSpeed;
	
}

if(hp <= 0){
		
	hp = 0;
		
}

if(keyboard_check(ord("W"))){
	
	mana += manaScaleSpeed;
	if(mana >= maxMana){
		
		mana = maxMana;
		
	}
	
}

if(keyboard_check(ord("S"))){
	
	mana -= manaScaleSpeed;
	if(mana <= 0){
		
		mana = 0;
		
	}
	
}


if(keyboard_check(ord("E"))){
	
	maxHp += hpScaleSpeed;
	
}

if(keyboard_check(ord("D"))){
	
	maxHp -= hpScaleSpeed;
	if(maxHp <= 100){
		
		maxHp = 100;
		
	}
	
}