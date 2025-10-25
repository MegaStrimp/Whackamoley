///@description WM - Add Stage Mole

function scr_WM_AddStageMole(targetMappedStageID,targetHoleID,targetMoleID,targetSpawnTime,targetDuration = (5 * 60))
{
	var tempMoleCount = global.WM_StageList[targetMappedStageID].maxMoles;
	
	global.WM_StageList[targetMappedStageID].moles[tempMoleCount] = 
	{
        holeID: targetHoleID,
		moleID: targetMoleID,
		spawnTime: targetSpawnTime,
		duration: targetDuration
    };
	
	global.WM_StageList[targetMappedStageID].maxMoles += 1;
	
	global.WM_StageList[targetMappedStageID].maxTime = targetSpawnTime + targetDuration + (1 * 60);
	
	return tempMoleCount;
}