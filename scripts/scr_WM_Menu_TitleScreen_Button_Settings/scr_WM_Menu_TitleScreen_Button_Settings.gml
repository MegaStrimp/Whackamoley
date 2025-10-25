///@description WM - Menu - Title Screen - Button - Settings

function scr_WM_Menu_TitleScreen_Button_Settings()
{
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Menu_Settings,false);
}