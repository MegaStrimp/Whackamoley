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
#endregion
#endregion

#region Begin Stage
scr_WM_Game_Create_Holes(targetStageID);
scr_WM_Game_Create_GameTimer(targetStageID);
#endregion