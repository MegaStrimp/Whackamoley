///@description Main

if (!localPause)
{
	#region Game Timer
	if (global.WM_IsEndless)
	{
		gameTimer += 1;
		if ((gameTimer % 60) == 0) gameTimerSeconds += 1;
	}
	else
	{
		gameTimer = max(gameTimer - 1,-1);
		if ((gameTimer % 60) == 0) gameTimerSeconds -= 1;
		
		if ((gameTimer == -1) and (!stageEnded))
		{
			stageEnded = true;
			scr_WM_Stage_End();
		}
	}
	#endregion
	
	#region Spawn Next Moles
	if (!global.WM_IsEndless)
	{
		while ((currentMoleIndex < global.WM_StageList[global.WM_CurrentStage].maxMoles) and (global.WM_StageList[global.WM_CurrentStage].moles[currentMoleIndex].spawnTime <= (gameTimerMax - gameTimer)))
		{
			var currentMole = global.WM_StageList[global.WM_CurrentStage].moles[currentMoleIndex];
			
			with (obj_WM_Game_Hole)
			{
				if (currentMole.holeID == ID) scr_WM_Game_Hole_SetMole(currentMole.moleID,currentMole.duration);
			}
			
			currentMoleIndex += 1;
		}
	}
	#endregion
	
	#region Endless Spawn Timer
	if (endlessSpawnTimer != -1)
	{
		endlessSpawnTimer = max(endlessSpawnTimer - speedMultFinal,0);
		if (endlessSpawnTimer == 0)
		{
			var randomAmount = irandom_range(1,maxHoles);
			show_debug_message(randomAmount)
			
			for (var i = 0; i < randomAmount; i++)
			{
				var randomMoleID = irandom_range(0,global.WM_MoleCount - 1);
				
				with (obj_WM_Game_Hole)
				{
					if (currentMoleID == -1)
					{
						scr_WM_Game_Hole_SetMole(randomMoleID,240);
						break;
					}
				}
			}
			
			endlessSpawnTimer = endlessSpawnTimerMax;
		}
	}
	#endregion
}