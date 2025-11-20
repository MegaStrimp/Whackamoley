///@description WM - Menu - Title Screen - Button - Stage Select

function scr_WM_Menu_TitleScreen_Button_StageSelect()
{
	global.WM_IsEndless = false;
	if (!instance_exists(obj_Transition)) scr_GoToRoom(rm_WM_Menu_StageSelect,false);
}