///@description WM - Pause - Execute

function scr_WM_Pause_Execute()
{
	if (global.WM_PauseFlag)
	{
		audio_pause_all();
		
		//scr_PlaySfx(snd_WM_Pause);
		
		global.gamePause = true;
		
		gamePauseDelayTimer = gamePauseDelayTimerMax;
		
		resumeButton = instance_create_depth(138,239,depth - 1,obj_WM_UI_Button);
		with (resumeButton)
		{
			isPausable = false;
			sprite = spr_WM_UI_Button_Resume;
			targetScript = scr_WM_Menu_Pause_Button_Resume;
		}
		
		exitButton = instance_create_depth(138,289,depth - 1,obj_WM_UI_Button);
		with (exitButton)
		{
			isPausable = false;
			sprite = spr_WM_UI_Button_Menu;
			targetScript = scr_WM_Menu_Pause_Button_Exit;
		}
		
		global.WM_PauseFlag = false;
	}
}