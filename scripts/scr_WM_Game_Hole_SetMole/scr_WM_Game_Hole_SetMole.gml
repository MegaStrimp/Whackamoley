///@description WM - Game - Hole - Set Mole

function scr_WM_Game_Hole_SetMole(targetMoleID,targetRetreatTimer = -1)
{
	currentMoleID = targetMoleID;
	
	if (currentMoleID != -1)
	{
		moleHp = global.WM_MoleList[targetMoleID].hp;
		moleHitScore = global.WM_MoleList[targetMoleID].hitScore;
		moleDeathScore = global.WM_MoleList[targetMoleID].deathScore;
		mask_index = global.WM_MoleList[targetMoleID].idleSprite;
		moleRetreatTimer = targetRetreatTimer;
	}
	
	moleImageIndex = 0;
	
	moleYOffset = moleYOffsetMax;
	moleYOffsetTarget = 0;
}