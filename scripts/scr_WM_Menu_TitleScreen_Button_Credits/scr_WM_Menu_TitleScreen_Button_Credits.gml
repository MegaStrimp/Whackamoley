///@description WM - Menu - Title Screen - Button - Credits

function scr_WM_Menu_TitleScreen_Button_Credits()
{
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Menu_Credits,false);
}