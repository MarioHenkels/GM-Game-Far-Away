score = 0;
lives = 3;

global.pause = true;
global.returnMenu = menu_page.main;
// ^ qual página o "voltar" dos menus deve retornar. pode ser "main" ou "pause"

global.view_height	= camera_get_view_height(view_camera[0]);
global.view_width	= camera_get_view_width(view_camera[0]);

global.currentCounterNum = 0;
global.targetCounterNum = 400;

global.lgEnemyCounterVal = 10;
global.mdEnemyCounterVal = 5;
global.mdEnemyCounterVal = 1;

global.allEnemies = [];

draw_set_font(fnt_text);

display_set_gui_size(global.view_width, global.view_height);

//CONTROLES
global.key_enter	= vk_space;
global.key_back		= vk_escape;
global.key_up		= ord("W");
global.key_down		= ord("W");
global.key_left		= ord("W");
global.key_right	= ord("W");
global.key_shoot	= mb_left;
global.key_skill	= mb_right;

