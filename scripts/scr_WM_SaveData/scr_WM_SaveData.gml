///@description WM - Save Data

function scr_WM_SaveData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	#region Mole Status
	for (var i = 0; i < ds_map_size(global.WM_MoleIDs); i++)
	{
		var moleID = global.WM_MoleList[i].ID;
		
		if (global.WM_MoleList[i].timesDefeated != 0) ini_write_real("moleStatus",string(moleID) + "_TimesDefeated",global.WM_MoleList[i].timesDefeated);
	}
	#endregion
	
	#region Stage Status
	for (var i = 0; i < ds_map_size(global.WM_StageIDs); i++)
	{
		var stageID = global.WM_StageList[i].ID;
		
		if (global.WM_StageList[i].isUnlocked != false) ini_write_real("stageStatus",string(stageID) + "_IsUnlocked",global.WM_StageList[i].isUnlocked);
		if (global.WM_StageList[i].maxScore != 0) ini_write_real("stageStatus",string(stageID) + "_MaxScore",global.WM_StageList[i].maxScore);
		if (global.WM_StageList[i].obtainedMedal != 0) ini_write_real("stageStatus",string(stageID) + "_ObtainedMedal",global.WM_StageList[i].obtainedMedal);
	}
	#endregion
	
	ini_close();
}