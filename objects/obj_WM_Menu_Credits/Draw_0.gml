///@description Draw

#region Default Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Draw Credits
var yy = 0;
var text = "";
var sep = 16;

for (var i = 0; i < array_length(creditsNames); i++)
{
	text = creditsNames[i];
	
	scribble(text).align(fa_center).scale(2).draw(global.gameWidth / 2,yStart + yScroll + yy);
	yy += sep;
}
#endregion