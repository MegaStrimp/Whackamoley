///@description WM - Set Background - Blue

function scr_WM_SetBackground_Blue()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_WM_Blue);
		layer_background_htiled(backgroundIndex[arrayIndex],true);
		layer_background_vtiled(backgroundIndex[arrayIndex],true);
		
		backgroundSetup = false;
	}
	
	var hsp = 1;
	var vsp = 1;
	
	var arrayIndex = 0;
	
	layer_x(backgroundLayer[arrayIndex],layer_get_x(backgroundLayer[arrayIndex]) + hsp);
	layer_y(backgroundLayer[arrayIndex],layer_get_y(backgroundLayer[arrayIndex]) + vsp);
}