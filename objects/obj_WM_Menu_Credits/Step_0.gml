///@description Main

#region Variables
var canSelect = true;
if (
(global.pauseFinal) or
(instance_exists(obj_Transition))
) canSelect = false;
#endregion

#region Scroll Timer
if (scrollTimer != -1)
{
	scrollTimer = max(scrollTimer - speedMultFinal,0);
	if (scrollTimer == 0)
	{
		yScroll -= 1;
	
		scrollTimer = scrollTimerMax;
	}
}
#endregion

#region Selection
if (canSelect)
{
	#region Exit Timer
	if (exitTimer != -1)
	{
		exitTimer = max(exitTimer - speedMultFinal,0);
		if (exitTimer == 0)
		{
			scr_GoToRoom(rm_WM_Menu_TitleScreen,true);
		
			exitTimer = -1;
		}
	}
	#endregion
}
#endregion