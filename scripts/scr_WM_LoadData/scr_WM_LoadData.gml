///@description WM - Load Data

function scr_WM_LoadData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	#region Mole Status
	for (var i = 0; i < ds_map_size(global.WM_MoleIDs); i++)
	{
		var moleID = global.WM_MoleList[i].ID;
		
		global.WM_MoleList[i].timesDefeated = ini_read_real("moleStatus",string(moleID) + "_TimesDefeated",0);
	}
	#endregion
	
	#region Stage Status
	for (var i = 0; i < ds_map_size(global.WM_StageIDs); i++)
	{
		var stageID = global.WM_StageList[i].ID;
		
		global.WM_StageList[i].isUnlocked = ini_read_real("stageStatus",string(stageID) + "_IsUnlocked",global.WM_StageList[i].isUnlocked);
		global.WM_StageList[i].maxScore = ini_read_real("stageStatus",string(stageID) + "_MaxScore",global.WM_StageList[i].maxScore);
		global.WM_StageList[i].obtainedMedal = ini_read_real("stageStatus",string(stageID) + "_ObtainedMedal",global.WM_StageList[i].obtainedMedal);
	}
	#endregion
	
	ini_close();
}