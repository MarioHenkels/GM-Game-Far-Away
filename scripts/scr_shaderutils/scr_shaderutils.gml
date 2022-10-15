
///@function						setColor(color)
///@param {enumColor.<color>}	cor a ser aplicada ao sprite

function setColor(color){

	switch(color){
		
		case colors.blue:
			light = blue_light;
			base = blue_base;
			dark = blue_dark;
			replaceColor(light, base, dark);
			break;
		
		case colors.red:
			light = red_light;
			base = red_base;
			dark = red_dark;
			replaceColor(light, base, dark);
			break;
		
		case colors.purple:
			light = purple_light;
			base = purple_base;
			dark = purple_dark;
			replaceColor(light, base, dark);
			break;
		
		case colors.orange:
			light = orange_light;
			base = orange_base;
			dark = orange_dark;
			replaceColor(light, base, dark);
			break;
		
		case colors.green:
			light = green_light;
			base = green_base;
			dark = green_dark;
			replaceColor(light, base, dark);
			break;
		
		default:
			light = grey_light;
			base = grey_base;
			dark = grey_dark;
			replaceColor(light, base, dark);
			break;
	}
}

///@function								replaceColor(colorLight, colorBase, colorDark)
///@param {Color} colorLight				nova cor clara	(macro no scr_color)
///@param {Color} colorBase					nova cor base	(macro no scr_color)
///@param {Color} colorDark					nova cor escura	(macro no scr_color)

function replaceColor(colorLight, colorBase, colorDark){
	
	colorMatch1 = grey_light;
	colorMatch2 = grey_base;
	colorMatch3 = grey_dark;
	
	colorReplace1 = colorLight;
	colorReplace2 = colorBase;
	colorReplace3 = colorDark;

	sh_handle_range = shader_get_uniform(sh_replaceColor, "range");
	sh_handle_match_1 = shader_get_uniform(sh_replaceColor, "colorMatch1");
	sh_handle_match_2 = shader_get_uniform(sh_replaceColor, "colorMatch2");
	sh_handle_match_3 = shader_get_uniform(sh_replaceColor, "colorMatch3");
	sh_handle_replace_1 = shader_get_uniform(sh_replaceColor, "colorReplace1");
	sh_handle_replace_2 = shader_get_uniform(sh_replaceColor, "colorReplace2");
	sh_handle_replace_3 = shader_get_uniform(sh_replaceColor, "colorReplace3");

	shader_set(sh_replaceColor);

	shader_set_uniform_f(sh_handle_range, 1);

	shader_set_uniform_f(
		sh_handle_match_1,
		colorMatch1.toShaderVal(colorMatch1.red),
		colorMatch1.toShaderVal(colorMatch1.green),
		colorMatch1.toShaderVal(colorMatch1.blue)
	);
	shader_set_uniform_f(
		sh_handle_match_2,
		colorMatch2.toShaderVal(colorMatch2.red),
		colorMatch2.toShaderVal(colorMatch2.green),
		colorMatch2.toShaderVal(colorMatch2.blue)
	);
	shader_set_uniform_f(
		sh_handle_match_3,
		colorMatch3.toShaderVal(colorMatch3.red),
		colorMatch3.toShaderVal(colorMatch3.green),
		colorMatch3.toShaderVal(colorMatch3.blue)
	);

	shader_set_uniform_f(
		sh_handle_replace_1,
		colorReplace1.toShaderVal(colorReplace1.red),
		colorReplace1.toShaderVal(colorReplace1.green),
		colorReplace1.toShaderVal(colorReplace1.blue)
	);
	shader_set_uniform_f(
		sh_handle_replace_2,
		colorReplace2.toShaderVal(colorReplace2.red),
		colorReplace2.toShaderVal(colorReplace2.green),
		colorReplace2.toShaderVal(colorReplace2.blue)
	);
	shader_set_uniform_f(
		sh_handle_replace_3,
		colorReplace3.toShaderVal(colorReplace3.red),
		colorReplace3.toShaderVal(colorReplace3.green),
		colorReplace3.toShaderVal(colorReplace3.blue)
	);

	draw_self();

	shader_reset();

}