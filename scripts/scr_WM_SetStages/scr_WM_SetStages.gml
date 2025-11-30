///@description WM - Set Stages

function scr_WM_SetStages()
{
	#region Setup
	global.WM_StageCount = 0;
	
	global.WM_StageList = [];
	global.WM_StageIDs = ds_map_create();
	#endregion
	
	#region Mole IDs
	var moleyID = global.WM_MoleIDs[? "moley"];
	var goldMoleyID = global.WM_MoleIDs[? "goldMoley"];
	var urchinID = global.WM_MoleIDs[? "urchin"];
	#endregion
	
	#region Stages
	#region Stage 1
	var mappedStageID = scr_WM_AddStage("stage1",1);
	global.WM_StageList[mappedStageID].isUnlocked = true;
	
	scr_WM_AddStageHole(mappedStageID,72,210);
	scr_WM_AddStageHole(mappedStageID,198,210);
	scr_WM_AddStageHole(mappedStageID,72,300);
	scr_WM_AddStageHole(mappedStageID,198,300);
	
	var currentTime = 0;
	var targetDuration = 0;
	currentTime += 2;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 3;
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 3;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,2,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,3,goldMoleyID,(currentTime * 60),(targetDuration * 60));
	#endregion
	
	#region Stage 2
	var mappedStageID = scr_WM_AddStage("stage2",2);
	
	scr_WM_AddStageHole(mappedStageID,72,210);
	scr_WM_AddStageHole(mappedStageID,198,210);
	scr_WM_AddStageHole(mappedStageID,72,300);
	scr_WM_AddStageHole(mappedStageID,198,300);
	
	var currentTime = 0;
	var targetDuration = 0;
	currentTime += 2;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,2,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,2,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 1;
	scr_WM_AddStageMole(mappedStageID,0,goldMoleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,2,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 3;
	scr_WM_AddStageMole(mappedStageID,0,urchinID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,1,urchinID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,2,urchinID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,3,urchinID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,0,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	currentTime += targetDuration;
	targetDuration = 2;
	scr_WM_AddStageMole(mappedStageID,1,moleyID,(currentTime * 60),(targetDuration * 60));
	scr_WM_AddStageMole(mappedStageID,2,urchinID,(currentTime * 60),(targetDuration * 60));
	#endregion
	#endregion
}