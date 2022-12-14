//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float range;
uniform vec4 colorMatch1;
uniform vec4 colorMatch2;
uniform vec4 colorMatch3;
uniform vec4 colorMatch4;
uniform vec4 colorReplace1;
uniform vec4 colorReplace2;
uniform vec4 colorReplace3;
uniform vec4 colorReplace4;

void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float newRange = range / 255.0;
	
	if(abs(pixelColor.r - colorMatch1.r) <= newRange 
		&& abs(pixelColor.g - colorMatch1.g) <= newRange
		&& abs(pixelColor.b - colorMatch1.b) <= newRange){	//substitui a cor luz
			
				pixelColor.rgb = colorReplace1.rgb;
		
	} else if(abs(pixelColor.r - colorMatch2.r) <= newRange 
		&& abs(pixelColor.g - colorMatch2.g) <= newRange
		&& abs(pixelColor.b - colorMatch2.b) <= newRange){	//substitui a cor base
			
				pixelColor.rgb = colorReplace2.rgb;
		
	} else if(abs(pixelColor.r - colorMatch3.r) <= newRange 
		&& abs(pixelColor.g - colorMatch3.g) <= newRange
		&& abs(pixelColor.b - colorMatch3.b) <= newRange){	//substitui a cor sombra
			
				pixelColor.rgb = colorReplace3.rgb;
	} else if(abs(pixelColor.r - colorMatch4.r) <= newRange 
		&& abs(pixelColor.g - colorMatch4.g) <= newRange
		&& abs(pixelColor.b - colorMatch4.b) <= newRange){	//override red to white
			
				pixelColor.rgb = colorReplace4.rgb;
	}
	
    gl_FragColor = pixelColor;
}
