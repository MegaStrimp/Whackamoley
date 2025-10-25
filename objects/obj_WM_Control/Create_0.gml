///@description Create

#region Initialize Variables
#region Screen Variables
global.shaders = true;

global.gameWidthTarget = 270;
global.gameHeightTarget = 480;
global.gameTileSize = 16;

global.windowScaleTarget = 2;

global.fullscreen = true;
#endregion

#region Gameplay Variables
global.gameTitle = "Whackamoley";
global.versionNumber = "0.1.0";

//global.pauseScript = scr_WM_PauseScript;

global.maxPlayers = 1;

global.WM_CurrentStage = 0;

scr_WM_SetMoles();
scr_WM_SetStages();
#endregion
#endregion

#region Adapt Display Size To Monitor
//global.windowScaleTarget = floor(scr_Screen_ScaleToScreenSize() / 1.2);
#endregion

#region Audio Setup
//scr_WM_AudioSetup();
#endregion

#region Set Window Caption
/*var flavorText = scr_WM_SetFlavorText();

window_set_caption(global.gameTitle + " " + string(global.versionNumber) + " - " + string(flavorText));*/
#endregion

#region Load Data
/*scr_WM_LoadGeneral("general.ini");
scr_WM_SaveGeneral("general.ini");

scr_WM_LoadConfig("config.ini");
scr_WM_SaveConfig("config.ini");

scr_WM_DefaultKeybindings();
scr_WM_LoadControls("controls.ini");

scr_WM_LoadData("data1.ini");*/
#endregion

#region Discord Rich Presence Setup
var appId = "1344734236199878786";
global.discord = true;

if (!np_initdiscord(appId, true, np_steam_app_id_empty))
{
	global.discord = false;
	Error_msg = "Discord RPC unable to initialize";
}

scr_Discord_Setup(-1,-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion