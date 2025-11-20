///@description Create

#region Initialize Variables
#region Gameplay Variables
playerNum = 0;
localPause = global.pauseFinal;
speedMultFinal = global.speedMultGlobal * global.deltaTime;

targetStageID = 0;

currentMoleIndex = 0;

currentHighScore = 0;

gameTimer = -1;
gameTimerMax = -1;
gameTimerSeconds = 0;

endlessSpawnTimer = -1;
endlessSpawnTimerMax = 300;
if (global.WM_IsEndless) endlessSpawnTimer = 0;
#endregion
#endregion

#region Begin Stage
if (global.WM_IsEndless)
{
	scr_WM_Game_Create_Holes(0);
}
else
{
	scr_WM_Game_Create_Holes(targetStageID);
	scr_WM_Game_Create_GameTimer(targetStageID);
}
#endregion