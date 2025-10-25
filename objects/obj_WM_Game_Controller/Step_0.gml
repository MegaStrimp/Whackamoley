///@description Main

if (!localPause)
{
	#region Game Timer
	gameTimer = max(gameTimer - 1,-1);
	if ((gameTimer % 60) == 0) gameTimerSeconds -= 1;
	#endregion
	
	#region Spawn Next Moles
	while ((currentMoleIndex < global.WM_StageList[global.WM_CurrentStage].maxMoles) and (global.WM_StageList[global.WM_CurrentStage].moles[currentMoleIndex].spawnTime <= (gameTimerMax - gameTimer)))
	{
		var currentMole = global.WM_StageList[global.WM_CurrentStage].moles[currentMoleIndex];
		
		with (obj_WM_Game_Hole)
		{
			if (currentMole.holeID == ID) scr_WM_Game_Hole_SetMole(currentMole.moleID,currentMole.duration);
		}
		
		currentMoleIndex += 1;
	}
	#endregion
}