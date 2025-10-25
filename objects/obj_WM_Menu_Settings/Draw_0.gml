///@description Draw

#region Default Font
scribble_font_set_default("fnt_Advance");
#endregion

draw_set_color(c_black);
#region Music Slider
scribble("Music").scale(2).draw(10,musicY - 8);

draw_rectangle(musicX,musicY - barHeight,musicX + barWidth,musicY + barHeight,false);
draw_rectangle(musicX + musicSliderX - sliderWidth,musicY - sliderHeight,musicX + musicSliderX + sliderWidth,musicY + sliderHeight,false);
#endregion

#region Sound Slider
scribble("Sound").scale(2).draw(10,soundY - 8);
draw_rectangle(soundX,soundY - barHeight,soundX + barWidth,soundY + barHeight,false);
draw_rectangle(soundX + soundSliderX - sliderWidth,soundY - sliderHeight,soundX + soundSliderX + sliderWidth,soundY + sliderHeight,false);
#endregion
draw_set_color(c_white);