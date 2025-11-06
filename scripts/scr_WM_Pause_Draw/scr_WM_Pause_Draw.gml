///@description WM - Pause - Draw

function scr_WM_Pause_Draw()
{
	var canDraw = ((gamePauseEndTimer == -1) and (!instance_exists(obj_Transition)));
	
	if (canDraw)
	{
		#region Background
		draw_set_color(c_black);
		draw_set_alpha(.5);
		draw_rectangle(0,0,global.gameWidth,global.gameHeight,false);
		draw_roundrect(63,123,211,337,false);
		draw_set_alpha(1);
		draw_set_color(c_white);
		#endregion
		
		#region Draw Text
		scribble("PAUSED").scale(3).align(fa_center).draw(140,145);
		#endregion
	}
}