///@description WM - Menu - Stage Select - Button - Stage

function scr_WM_Menu_StageSelect_Button_Stage()
{
	if (!instance_exists(obj_Transition))
	{
		global.WM_CurrentStage = scriptParameter;
		scr_GoToRoom(rm_WM_Game,false);
	}
}