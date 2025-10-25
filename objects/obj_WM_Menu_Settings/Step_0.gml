///@description Main

#region Music Slider
if ((abs(device_mouse_x_to_gui(0) - (musicX + musicSliderX)) <= (sliderWidth + sliderTolerance)) and (abs(device_mouse_y_to_gui(0) - (musicY)) <= (sliderHeight + sliderTolerance)) and (mouse_check_button(mb_left)))
{
	musicSliderX = clamp(device_mouse_x_to_gui(0) - musicX,0,barWidth);
	
	global.musicVolume = musicSliderX / barWidth;
}
#endregion

#region Sound Slider
if ((abs(device_mouse_x_to_gui(0) - (soundX + soundSliderX)) <= (sliderWidth + sliderTolerance)) and (abs(device_mouse_y_to_gui(0) - (soundY)) <= (sliderHeight + sliderTolerance)) and (mouse_check_button(mb_left)))
{
	soundSliderX = clamp(device_mouse_x_to_gui(0) - soundX,0,barWidth);
	
	global.soundVolume = soundSliderX / barWidth;
}
#endregion