
/// @function					handlePlayerMovement(moveX, moveY, accel, flightSpd)
/// @param	{int} moveX			1, -1 ou 0 caso direita, esquerda ou nada
/// @param	{int} moveY			1, -1 ou 0 caso baixo, cima ou nada
/// @param	{real} accel		Aceleração
/// @param	{real} flightSpd	Velocidade Máxima

function handlePlayerMovement(moveX, moveY, accel, flightSpd){
	
	switch(moveX) {
	    case 1:
			motion_add(0, accel);
			break;
	    case -1:
			motion_add(180, accel);
			break;
	}

	switch(moveY) {
	    case 1:
		    motion_add(270, accel);
		    break;
	    case -1:
		    motion_add(90, accel);
		    break;
	}
	
	if(speed > flightSpd){
	    speed = flightSpd;
	} else if (speed < -flightSpd) {
	    speed = -flightSpd
	}
}