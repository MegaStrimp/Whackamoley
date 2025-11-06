///@description Main

if (!localPause)
{
	#region Click
	if ((mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,id)))
	{
		if (targetScript != -1) script_execute(targetScript);
	}
	#endregion
}