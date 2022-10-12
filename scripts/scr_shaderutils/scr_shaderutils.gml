
///function						setColor(color)
///param {enumColor.<color>}	cor a ser aplicada ao sprite

function setColor(color){

	switch(color){
		
		case colorNames.blue:
			replaceColor();
			break;
		
		case colorNames.red:
			replaceColor();
			break;
		
		case colorNames.purple:
			replaceColor();
			break;
		
		case colorNames.orange:
			replaceColor();
			break;
		
		case colorNames.green:
			replaceColor();
			break;
		
		default:
			shader_reset();
			break;
	}
}

///function										replaceColor(colorLight, colorBase, colorDark)

function replaceColor(colorLight, colorBase, colorDark){
	
	colorMatch1 = grey_light;
	colorMatch2 = grey_base;
	colorMatch3 = grey_dark;
	
	colorReplace1= new global.Color(12, 243, 255);

	sh_handle_range = shader_get_uniform(sh_replaceColor, "range");
	sh_handle_match_1 = shader_get_uniform(sh_replaceColor, "colorMatch1");
	sh_handle_replace_1 = shader_get_uniform(sh_replaceColor, "colorReplace1");

	shader_set(sh_replaceColor);

	shader_set_uniform_f(sh_handle_range, 1);

	shader_set_uniform_f(
		sh_handle_match_1,
		colorMatch1.toShaderVal(colorMatch1.red),
		colorMatch1.toShaderVal(colorMatch1.blue),
		colorMatch1.toShaderVal(colorMatch1.green)
	);

	shader_set_uniform_f(
		sh_handle_replace_1,
		colorReplace1.toShaderVal(colorReplace1.red),
		colorReplace1.toShaderVal(colorReplace1.blue),
		colorReplace1.toShaderVal(colorReplace1.green)
	);

	shader_set_uniform_f(sh_handle_range, 1);

	draw_self();

	shader_reset();

}