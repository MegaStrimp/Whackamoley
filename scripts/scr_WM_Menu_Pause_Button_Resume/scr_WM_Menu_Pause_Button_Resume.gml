///@description WM - Menu - Pause - Button - Resume

function scr_WM_Menu_Pause_Button_Resume()
{
	with (obj_FrameworkControl)
	{
		instance_destroy(resumeButton);
		instance_destroy(exitButton);
		gamePauseEndTimer = 0;
	}
}