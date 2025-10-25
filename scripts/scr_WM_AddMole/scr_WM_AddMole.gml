///@description WM - Add Mole

function scr_WM_AddMole(targetID,targetName,targetHp,targetIdleSprite,targetHurtSprite,targetHitScore,targetDeathScore,targetHitScript = scr_WM_Mole_Hit_Default)
{
	var mappedID = global.WM_MoleCount;
	
	ds_map_add(global.WM_MoleIDs,targetID,mappedID);
	
	global.WM_MoleList[mappedID] = 
	{
        ID: targetID,
        name: targetName,
		hp: targetHp,
        idleSprite: targetIdleSprite,
        hurtSprite: targetHurtSprite,
		hitScore: targetHitScore,
		deathScore: targetDeathScore,
		hitScript: targetHitScript,
		
		timesDefeated: 0
    };
	
	global.WM_MoleCount += 1;
	
	return mappedID;
}