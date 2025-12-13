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
	
	moleYOffset = lerp(moleYOffset,moleYOffsetTarget,.3);
	#endregion
	
	#region Hit
	if ((mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,id)))
	{
		if ((currentMoleID != -1) and (moleHp > 0) and (moleHurtTimer == -1))
		{
			if (moleHp != -1)
			{
				scr_Camera_SetScreenshake(1,1);
				localFreezeFrameTimer = 5;
				moleHurtTimer = moleHurtTimerMax;
				flashTimer = 2;
				moleHp -= 1;
				
				if (moleHp <= 0)
				{
					moleRetreatTimer = 0;
					
					global.levelScoreCurrent = max(0,global.levelScoreCurrent + moleDeathScore);
					
					if (moleDeathScore < 0)
					{
						global.WM_Health -= 1;
						
						if (global.WM_Health <= 0)
						{
							scr_WM_Stage_End();
							room_goto(global.roomPrevious);
						}
					}
				}
			}
			
			if (moleHp != 0) global.levelScoreCurrent = max(0,global.levelScoreCurrent + moleHitScore);
		}
	}
	#endregion
	
	#region Mole Retreat Timer
	if (moleRetreatTimer != -1)
	{
		moleRetreatTimer = max(moleRetreatTimer - speedMultFinal,0);
		if (moleRetreatTimer == 0)
		{
			moleYOffsetTarget = moleYOffsetMax;
			moleDestroyTimer = moleDestroyTimerMax;
			
			moleRetreatTimer = -1;
		}
	}
	#endregion
	
	#region Mole Hurt Timer
	if (moleHurtTimer != -1)
	{
		moleHurtTimer = max(moleHurtTimer - speedMultFinal,0);
		if (moleHurtTimer == 0)
		{
			moleHurtTimer = -1;
		}
	}
	#endregion
	
	#region Mole Destroy Timer
	if (moleDestroyTimer != -1)
	{
		moleDestroyTimer = max(moleDestroyTimer - speedMultFinal,0);
		if (moleDestroyTimer == 0)
		{
			scr_WM_Game_Hole_SetMole(-1);
			
			moleDestroyTimer = -1;
		}
	}
	#endregion
	
	#region Flash Timer
	if (flashTimer != -1)
	{
		flashTimer = max(flashTimer - speedMultFinal,0);
		if (flashTimer == 0)
		{
			flashTimer = -1;
		}
	}
	#endregion
}

#region Local Freeze Frame Timer
if (localFreezeFrameTimer != -1)
{
	localFreezeFrameTimer = max(localFreezeFrameTimer - speedMultFinal,0);
	if (localFreezeFrameTimer == 0)
	{
		localFreezeFrameTimer = -1;
	}
}
#endregion