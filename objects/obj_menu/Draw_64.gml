
if(!global.pause) exit;

var menu_pages = global.menu_pages;
var menu_options = global.menu_options;
var page = global.page;

var gWidth = global.view_width, gHeight = global.view_height;

var ds_grid = menu_pages[page]
var ds_height = ds_grid_height(ds_grid);

var y_buffer = 32, x_buffer = 16;

var start_y = (gHeight/2) - ((((ds_height - 1) / 2) * y_buffer));
var start_x = gWidth / 2;



///////////////////////////////////////////////////////////////////////Draw background
var bgColor = c_black;

draw_rectangle_color(0,0,gWidth,gHeight,bgColor,bgColor,bgColor,bgColor,false);

///////////////////////////////////////////////////////////////////////Draw left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer;
var lty;

var yy = 0;
repeat(ds_height){
	var c = c_white;
	var xOffset = 0;
	
	lty = start_y + (yy * y_buffer);
	
	if(yy == menu_options[page]) {
		c = c_aqua;
		xOffset -= (x_buffer/2);
	}
	
	draw_text_color(ltx + xOffset, lty, ds_grid[# 0, yy], c,c,c,c,1);
	
	
	yy++;
}

///////////////////////////////////////////////////////////////////////Draw dividing line

draw_line(start_x, start_y - y_buffer, start_x, lty + y_buffer);

////////////////////////////////////////////////////////////////////////Draw right side

draw_set_halign(fa_left);

var rtx = start_x + x_buffer;
var rty;

yy = 0;
repeat(ds_height){
	rty = start_y + (yy * y_buffer); 
	
	switch(ds_grid[# 1, yy]){
		
		case menu_element_type.shift: //SHIFT (ENUM)

			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			c = c_white;
			
			var right_shift = " >>";
			var left_shift = "<< ";
			if(current_val == 0){
				left_shift = " ";
			} else if (current_val == array_length(ds_grid[# 4, yy]) -1){
				right_shift = " ";
			}
			
			if(global.menuInputting && yy == menu_options[page]){ c = c_yellow; }
			draw_text_color(rtx, rty, left_shift + current_array[current_val] + right_shift, c, c, c, c, 1);
			
			break;
		case menu_element_type.slider: //SLIDER
			
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = c_white;
			
			draw_line_width(rtx, rty, rtx + len, rty, 2);
			
			if(global.menuInputting && yy == menu_options[page]){ c = c_yellow; }
			draw_circle_color(rtx + (circle_pos * len), rty, 4, c, c, false);
			draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos * 100)) + "%",c,c,c,c,1);
			
			break;
		case menu_element_type.toggle: //TOGGLE
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			
			if(global.menuInputting && yy == menu_options[page]){ c = c_yellow; }
			
			if(current_val == 0) {
				c1 = c;
				c2 = c_dkgray;
			} else {
				c1 = c_dkgray;
				c2 = c;
			}
			
			draw_text_color(rtx, rty, "ON",c1,c1,c1,c1,1);
			draw_text_color(rtx + 32, rty, "OFF",c2,c2,c2,c2,1);
		
		case menu_element_type.input: //INPUT
			var current_val = ds_grid[# 3, yy];
			var string_val;
			
			switch(current_val){
				case ord("W"): string_val = "UP"; break;
				case ord("S"): string_val = "DOWN"; break;
				case ord("A"): string_val = "LEFT"; break;
				case ord("D"): string_val = "RIGHT"; break;
				case mb_left: string_val = "SHOOT"; break;
				case mb_right: string_val = "SKILL"; break;
				default:		string_val = chr(current_val); break;
			}
			c = c_white;
			
			if(global.menuInputting && yy == menu_options[page]){ c = c_yellow; }
			draw_text_color(rtx, rty, string_val, c,c,c,c,1);
			
			break;
	}
	yy++;
}



draw_set_valign(fa_top);