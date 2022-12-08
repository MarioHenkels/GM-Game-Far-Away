
//Listagem de todas as páginas de menu
enum menu_page {
	main,
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
	["INICIAR JOGO",		menu_element_type.script_runner,		start_game],
	["DIFICULDADE",	menu_element_type.shift,		change_difficulty, 1, ["FACIL","MEDIO","DIFICIL"]],
	["SAIR",		menu_element_type.script_runner,		exit_game]
);



global.page = 0;
global.menu_pages = [ds_menu_main]

var i = 0;
repeat(array_length(menu_pages)){
	global.menu_options[i] = 0;
	i++;
}