///@description WM - Add Stage Hole

function scr_WM_AddStageHole(targetMappedStageID,targetX,targetY,targetScript = -1)
{
	var tempHoleCount = global.WM_StageList[targetMappedStageID].maxHoles;
	
	global.WM_StageList[targetMappedStageID].holes[tempHoleCount] = 
	{
        x: targetX,
		y: targetY,
		script: targetScript
    };
	
	global.WM_StageList[targetMappedStageID].maxHoles += 1;
	
	return tempHoleCount;
}