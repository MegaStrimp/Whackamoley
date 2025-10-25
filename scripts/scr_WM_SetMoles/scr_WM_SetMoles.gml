///@description WM - Set Moles

function scr_WM_SetMoles()
{
	#region Setup
	global.WM_MoleCount = 0;
	
	global.WM_MoleList = [];
	global.WM_MoleIDs = ds_map_create();
	#endregion
	
	#region Add Moles Here
	scr_WM_AddMole("moley","Moley",1,spr_WM_Moles_Moley_Idle,spr_WM_Moles_Moley_Hurt,0,100);
	scr_WM_AddMole("goldMoley","Gold Moley",1,spr_WM_Moles_GoldMoley_Idle,spr_WM_Moles_GoldMoley_Hurt,0,300);
	scr_WM_AddMole("urchin","Urchin",-1,spr_WM_Moles_Urchin_Idle,spr_WM_Moles_Urchin_Idle,0,-200);
	#endregion
}