
//Listagem de todas as páginas de menu
enum menu_page {
	main,
	pause,
	options,
	audio,
	difficulty,
	progress,
	controls,
	height
}

//Listagem de todos os tipos de opções que podem estar nos menus
enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//CRIANDO AS PÁGINAS DOS MENUS

//MENU PRINCIPAL
ds_menu_main = create_menu_page(
	["START",		menu_element_type.script_runner,		start_game],
	["PROGRESS",	menu_element_type.page_transfer,		menu_page.progress],
	["OPTIONS",		menu_element_type.page_transfer,		menu_page.options],
	["EXIT",		menu_element_type.script_runner,		exit_game]
);
//MENU DE PAUSA
ds_menu_pause = create_menu_page(
	["RESUME",		menu_element_type.script_runner,		resume_game],
	["OPTIONS",		menu_element_type.page_transfer,		menu_page.options],
	["MAIN_MENU",	menu_element_type.page_transfer,		menu_page.main]
);
//OPÇÕES
ds_options = create_menu_page(
	["AUDIO",		menu_element_type.page_transfer,		menu_page.audio],
	["DIFFICULTY",	menu_element_type.page_transfer,		menu_page.difficulty],
	["CONTROLS",	menu_element_type.page_transfer,		menu_page.controls],
	["BACK",		menu_element_type.page_transfer,		"returnMenu"]
);
//OPÇÕES DE AUDIO
ds_audio = create_menu_page(
	["MASTER",		menu_element_type.slider,			change_volume,	1,	[0,1]],
	["MUSIC",		menu_element_type.slider,			change_volume,	1,	[0,1]],
	["SOUNDS",		menu_element_type.slider,			change_volume,	1,	[0,1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.options]
);
//OPÇÕES DE DIFICULDADE
ds_difficulty = create_menu_page(
	["DAMAGE",		menu_element_type.shift,			change_difficulty, 1, ["EASY", "MEDUIM", "HARD"]],
	["ENEMIES",		menu_element_type.shift,			change_difficulty, 1, ["FEW", "MANY", "LOTS"]],
	["BACK",		menu_element_type.page_transfer,	menu_page.options]
);
//MUDAR CONTROLES
ds_controls = create_menu_page(
	["UP",			menu_element_type.input,			"key_up",		ord("W")],
	["DOWN",		menu_element_type.input,			"key_down",		ord("S")],
	["LEFT",		menu_element_type.input,			"key_left",		ord("A")],
	["RIGHT",		menu_element_type.input,			"key_right",	ord("D")],
	["SHOOT",		menu_element_type.input,			"key_shoot",	mb_left],
	["SKILL",		menu_element_type.input,			"key_skill",	mb_right],
	["BACK",		menu_element_type.page_transfer,	menu_page.options]
);
//PROGRESSO (ranking)
ds_progress = create_menu_page(
	["RESUME",		menu_element_type.script_runner,	resume_game],
	["OPTIONS",		menu_element_type.page_transfer,	menu_page.options],
	["MAIN_MENU",	menu_element_type.page_transfer,	menu_page.main]
);

global.page = 0;
global.menu_pages = [ds_menu_main,
				ds_menu_pause,
				ds_options,
				ds_audio,
				ds_difficulty,
				ds_controls,
				ds_progress]

var i = 0;
repeat(array_length(menu_pages)){
	global.menu_options[i] = 0;
	i++;
}