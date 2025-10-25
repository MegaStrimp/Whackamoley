///@description Main

if (!localPause)
{
	#region Mole
	if (currentMoleID != -1)
	{
	    var spriteIndex = global.WM_MoleList[currentMoleID].idleSprite;
		var imageNumber = sprite_get_number(spriteIndex);
		var imageSpeed = sprite_get_speed(spriteIndex) / 60;
		
		if (imageSpeed != 0) moleImageIndex = (moleImageIndex + imageSpeed + imageNumber) % imageNumber;
	}
	
	moleYOffset = lerp(moleYOffset,moleYOffsetTarget,.1);
	#endregion
	
	#region Offset Timer
	if (offsetTimer != -1)
	{
		offsetTimer = max(offsetTimer - speedMultFinal,0);
		if (offsetTimer == 0)
		{
			if (moleYOffsetTarget == 0)
			{
				moleYOffsetTarget = moleYOffsetMax;
			}
			else
			{
				moleYOffsetTarget = 0;
			}
			
			offsetTimer = offsetTimerMax;
		}
	}
	#endregion
}