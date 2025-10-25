///@description Draw

#region Default Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Timer
scribble(string_replace_all(string_format(gameTimerSeconds,2,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,30);
#endregion

#region Score
scribble(string_replace_all(string_format(global.levelScoreCurrent,6,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 60);

scribble_font_set_default("fnt_Advance_Gray");
scribble(string_replace_all(string_format(currentHighScore,6,0)," ","0")).scale(2).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 30);
scribble_font_set_default("fnt_Advance");
#endregion