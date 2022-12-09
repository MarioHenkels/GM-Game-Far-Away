score = 0;
lives = 5;

random_set_seed(randomize());

global.pause = true;
global.returnMenu = menu_page.main;
// ^ qual página o "voltar" dos menus deve retornar. pode ser "main" ou "pause"

global.view_height	= camera_get_view_height(view_camera[0]);
global.view_width	= camera_get_view_width(view_camera[0]);

global.currentCounterNum = 0;
global.targetCounterNum = 50;

global.lgEnemyCounterVal = 10;
global.mdEnemyCounterVal = 5;
global.smEnemyCounterVal = 1;

global.enemyCount = 0;

global.counterHitCount = 0;

global.background = choose(spr_background, spr_background_2, spr_background_3, spr_background_4);

global.allEnemies = [];

global.projectileSpeed = 10;
global.projectileSpeedFast = 15;

global.restarting = false;

global.menuInputting = false;

//Dificuldade: 0- Fácil, 1- Médio, 2- Difícil.
global.difficulty = 1;

draw_set_font(fnt_text);

display_set_gui_size(global.view_width, global.view_height);

//CONTROLES
global.key_enter	= vk_space;
global.key_back		= vk_escape;
global.key_up		= ord("W");
global.key_down		= ord("S");
global.key_left		= ord("A");
global.key_right	= ord("D");
global.key_shoot	= mb_left;
global.key_skill	= mb_right;

