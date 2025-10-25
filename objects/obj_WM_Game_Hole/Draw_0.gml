///@description Draw

#region Hole
draw_sprite(spr_WM_Game_Hole,0,x,y);
#endregion

#region Mole
var doesFlash = (flashTimer != -1);
if (currentMoleID != -1)
{
    var spriteIndex = global.WM_MoleList[currentMoleID].idleSprite;
	if (moleHp <= 0) spriteIndex = global.WM_MoleList[currentMoleID].hurtSprite;
	
    var spriteXOrigin = sprite_get_xoffset(spriteIndex);
    var spriteYOrigin = sprite_get_yoffset(spriteIndex);
    
	if (doesFlash) gpu_set_fog(true,c_white,0,0);
    draw_sprite_part(spriteIndex,moleImageIndex,0,0,sprite_get_width(spriteIndex),sprite_get_height(spriteIndex) - moleYOffset,x - spriteXOrigin,y - spriteYOrigin + moleYOffset);
	if (doesFlash) gpu_set_fog(false,c_white,0,0);
}
#endregion