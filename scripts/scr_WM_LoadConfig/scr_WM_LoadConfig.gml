///@description WM - Load Config

function scr_WM_LoadConfig(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	global.musicVolume = ini_read_real("options","musicVolume",1);
	global.soundVolume = ini_read_real("options","soundVolume",1);
	
	ini_close();
}