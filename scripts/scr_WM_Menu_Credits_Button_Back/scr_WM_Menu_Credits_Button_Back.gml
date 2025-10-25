///@description WM - Menu - Credits - Button - Back

function scr_WM_Menu_Credits_Button_Back()
{
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Menu_TitleScreen,false);
}