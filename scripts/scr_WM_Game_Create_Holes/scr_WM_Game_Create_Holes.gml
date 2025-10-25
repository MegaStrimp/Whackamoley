///@description WM - Game - Create - Holes

function scr_WM_Game_Create_Holes(targetStageID)
{
	for (var i = 0; i < global.WM_StageList[targetStageID].maxHoles; i++)
	{
		var targetHole = global.WM_StageList[targetStageID].holes[i];
		
		var hole = instance_create_depth(targetHole.x,targetHole.y,depth,obj_WM_Game_Hole);
		
		with (hole)
		{
			ID = i;
		}
	}
}