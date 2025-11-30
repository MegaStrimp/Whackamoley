///@description Draw

#region Default Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Timer
scribble(string_replace_all(string_format(gameTimerSeconds,2,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,30);
#endregion

#region Score
scribble(string_replace_all(string_format(global.levelScoreCurrent,6,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 60);

scribble("[fnt_Advance_Gray]" + string_replace_all(string_format(currentHighScore,6,0)," ","0") + "[/font]").scale(2).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 30);
#endregion

if (stageEnded)
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
	scribble("CLEAR").scale(3).align(fa_center).draw(140,145);
	#endregion
	
	#region Score
	scribble(string_replace_all(string_format(global.levelScoreCurrent,6,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,180);
	#endregion
	
	#region Medal
	var medalSprite = -1;
	
	switch (global.WM_CurrentMedal)
	{
		case 1:
		medalSprite = spr_WM_UI_Medal_Bronze;
		break;
		
		case 2:
		medalSprite = spr_WM_UI_Medal_Silver;
		break;
		
		case 3:
		medalSprite = spr_WM_UI_Medal_Gold;
		break;
	}
	
	if (medalSprite != -1) draw_sprite(medalSprite,0,138,236);
	#endregion
}