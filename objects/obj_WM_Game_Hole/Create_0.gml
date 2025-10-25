///@description Create

#region Initialize Variables
#region Gameplay Variables
ID = 0;

currentMoleID = -1;
moleImageIndex = 0;
moleImageNumber = 0;
moleImageSpeed = 0;
moleHp = 0;
moleHitScore = 0;
moleDeathScore = 0;

moleYOffsetMax = 48;
moleYOffset = moleYOffsetMax;
moleYOffsetTarget = 0;

moleRetreatTimer = -1;

moleHurtTimer = -1;
moleHurtTimerMax = 5;

moleDestroyTimerMax = 15;
moleDestroyTimer = -1;

localFreezeFrameTimer = -1;
flashTimer = -1;
#endregion
#endregion