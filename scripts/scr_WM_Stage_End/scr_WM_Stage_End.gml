///@description WM - Stage - End

function scr_WM_Stage_End(won = true)
{
	with (obj_WM_UI_Button) instance_destroy();
	
	if (won)
	{
		if ((global.WM_CurrentStage + 1) < global.WM_StageCount)
		{
			global.WM_StageList[global.WM_CurrentStage + 1].isUnlocked = true;
		}
		
		if (global.WM_StageList[global.WM_CurrentStage].maxScore < global.levelScoreCurrent)
		{
			global.WM_StageList[global.WM_CurrentStage].maxScore = global.levelScoreCurrent;
			
			for (var i = 2; i >= 0; i--)
			{
				if (global.levelScoreCurrent >= global.WM_StageList[global.WM_CurrentStage].medalScores[i])
				{
					global.WM_StageList[global.WM_CurrentStage].obtainedMedal = i + 1;
					break;
				}
			}
		}
		
		global.WM_CurrentMedal = global.WM_StageList[global.WM_CurrentStage].obtainedMedal;
		
		exitButton = instance_create_depth(138,295,depth - 1,obj_WM_UI_Button);
		with (exitButton)
		{
			isPausable = false;
			sprite = spr_WM_UI_Button_Menu;
			targetScript = scr_WM_Game_Button_Exit;
		}
	}
	
	global.WM_Health = global.WM_HealthMax;
	
	scr_WM_SaveData("data.ini");
}