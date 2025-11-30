///@description WM - Game - Button - Exit

function scr_WM_Game_Button_Exit()
{
	instance_destroy();
	
	if (!instance_exists(obj_Transition)) scr_GoToRoom(global.roomPrevious,false);
}