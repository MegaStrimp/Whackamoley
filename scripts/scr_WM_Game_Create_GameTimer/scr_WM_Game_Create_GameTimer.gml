///@description WM - Game - Create - Game Timer

function scr_WM_Game_Create_GameTimer(targetStageID)
{
	gameTimerMax = global.WM_StageList[targetStageID].maxTime;
	gameTimer = gameTimerMax;
	
	gameTimerSeconds = floor(gameTimer / 60);
}