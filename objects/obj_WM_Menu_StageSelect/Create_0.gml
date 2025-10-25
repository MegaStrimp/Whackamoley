///@description Create

#region Create Buttons
for (var i = 0; i < global.WM_StageCount; i++)
{
	var targetX = 45 + (60 * (i % 4));
	var targetY = 45 + (60 * floor(i / 4));
	
	var button = instance_create_depth(targetX,targetY,depth,obj_WM_UI_Button);
	with (button)
	{
		text = string(i + 1);
		script = scr_WM_Menu_StageSelect_Button_Stage;
		scriptParameter = i;
	}
}
#endregion