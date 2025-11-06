///@description WM - Menu - Pause - Button - Exit

function scr_WM_Menu_Pause_Button_Exit()
{
	with (obj_FrameworkControl)
	{
		instance_destroy(resumeButton);
		instance_destroy(exitButton);
		gamePauseEndTimer = 0;
	}
	
	if (!instance_exists(obj_Transition)) scr_GoToRoom(global.roomPrevious,false);
}