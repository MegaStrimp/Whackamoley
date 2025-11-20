///@description WM - Menu - Title Screen - Button - Endless

function scr_WM_Menu_TitleScreen_Button_Endless()
{
	global.WM_IsEndless = true;
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Game,false);
}