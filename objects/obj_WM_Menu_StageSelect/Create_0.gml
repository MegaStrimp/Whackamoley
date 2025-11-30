///@description Create

#region Create Buttons
var availableStageNum = 0;

for (var i = 0; i < global.WM_StageCount; i++)
{
	if (global.WM_StageList[i].isUnlocked)
	{
		var targetX = 45 + (60 * (availableStageNum % 4));
		var targetY = 45 + (60 * floor(availableStageNum / 4));
		
		var button = instance_create_depth(targetX,targetY,depth,obj_WM_UI_Button);
		with (button)
		{
			text = string(i + 1);
			targetScript = scr_WM_Menu_StageSelect_Button_Stage;
			scriptParameter = i;
		}
		
		availableStageNum += 1;
	}
}
#endregion