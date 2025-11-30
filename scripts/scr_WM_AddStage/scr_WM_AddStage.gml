///@description WM - Add Stage

function scr_WM_AddStage(targetID,targetStageOrder,targetMedalScores = [100,200,300])
{
	var mappedID = global.WM_StageCount;
	
	ds_map_add(global.WM_StageIDs,targetID,mappedID);
	
	global.WM_StageList[mappedID] = 
	{
        ID: targetID,
		stageOrder: targetStageOrder,
		holes: [],
		maxHoles: 0,
		moles: [],
		maxMoles: 0,
		maxTime: 0,
		medalScores: targetMedalScores,
		isUnlocked: false,
		maxScore: 0,
		obtainedMedal: 0
    };
	
	global.WM_StageCount += 1;
	
	return mappedID;
}