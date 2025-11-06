///@description WM - Pause - Step

function scr_WM_Pause_Step()
{
	var canSelect = ((gamePauseEndTimer == -1) and (!instance_exists(obj_Transition)));
	
	if (canSelect)
	{
		if (WM_GamePauseSelection == 0)
		{
			#region Resume
			if ((input_check_pressed("left",playerNum)) or (input_check_pressed("right",playerNum)))
			{
				//scr_PlaySfx(snd_WM_Select);
				
				WM_GamePauseSelection = 1;
			}
			
			if ((input_check_pressed("start",playerNum)) or (input_check_pressed("A",playerNum)))
			{
				//scr_PlaySfx(snd_WM_Pause);
				
				gamePauseEndTimer = 20;
				gamePauseDelayTimer = gamePauseEndTimer + 5;
			}
			#endregion
		}
		else
		{
			#region Leave
			if ((input_check_pressed("left",playerNum)) or (input_check_pressed("right",playerNum)))
			{
				//scr_PlaySfx(snd_WM_Select);
				
				WM_GamePauseSelection = 0;
			}
			
			if ((input_check_pressed("start",playerNum)) or (input_check_pressed("A",playerNum)))
			{
				//scr_PlaySfx(snd_WM_Pause);
				
				//scr_GoToRoom_GameBoy(rm_WM_Menu_MainMenu,false);
				
				scr_Stage_End();
				
				global.WM_CurrentArenaList = -1;
				global.WM_ArenaListIndex = 0;
				
				global.gamePause_Leave = true;
				
				gamePauseEndTimer = 60;
				gamePauseDelayTimer = gamePauseDelayTimerMax + 5;
			}
			#endregion
		}
		
		#region Resume
		if (input_check_pressed("B",playerNum))
		{
			//scr_PlaySfx(snd_WM_Pause);
			
			gamePauseEndTimer = 20;
			gamePauseDelayTimer = gamePauseEndTimer + 5;
		}
		#endregion
	}
}