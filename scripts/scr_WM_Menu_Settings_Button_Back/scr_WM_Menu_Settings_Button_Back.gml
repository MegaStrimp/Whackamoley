///@description WM - Menu - Settings - Button - Back

function scr_WM_Menu_Settings_Button_Back()
{
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Menu_TitleScreen,false);
}