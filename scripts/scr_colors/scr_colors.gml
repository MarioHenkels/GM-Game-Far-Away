//classe global Color (descreve uma cor com seus valores R G B)
global.Color = function(r, g, b) constructor {
	red = r;
	green = g;
	blue = b;
	
	static toShaderVal = function(val){
		return val / 255;
	}
}

//Nomes das cores possíveis para sprites
enum colors
{
	grey,
    blue,
    red,
    purple,
    orange,
    green
}

//CORES OVERRIDE
#macro white_override new global.Color(255, 0, 64);
#macro white new global.Color(255, 255, 255);

//CORES SPRITE CINZA
#macro grey_light new global.Color(255, 255, 255);
#macro grey_base new global.Color(146, 161, 185);
#macro grey_dark new global.Color(66, 76, 110);

//CORES SPRITE AZUL
#macro blue_light new global.Color(12, 243, 255);
#macro blue_base new global.Color(0, 150, 220);
#macro blue_dark new global.Color(12, 46, 68);

//CORES SPRITE VERMELHO
#macro red_light new global.Color(255, 81, 0);
#macro red_base new global.Color(196, 36, 47);
#macro red_dark new global.Color(87, 28, 39);

//CORES SPRITE ROXO
#macro purple_light new global.Color(243, 137, 245);
#macro purple_base new global.Color(121, 9, 250);
#macro purple_dark new global.Color(59, 20, 67);

//CORES SPRITE LARANJA
#macro orange_light new global.Color(255, 201, 37);
#macro orange_base new global.Color(198, 68, 36);
#macro orange_dark new global.Color(142, 36, 29);

//CORES SPRITE VERDE
#macro green_light new global.Color(153, 230, 95);
#macro green_base new global.Color(51, 152, 75);
#macro green_dark new global.Color(19, 76, 76);
