///@description Draw

#region Hole
draw_sprite(spr_WM_Game_Hole,0,x,y);
#endregion

#region Mole
if (currentMoleID != -1)
{
    var spriteIndex = global.WM_MoleList[currentMoleID].idleSprite;
	
    var spriteXOrigin = sprite_get_xoffset(spriteIndex);
    var spriteYOrigin = sprite_get_yoffset(spriteIndex);
    
    draw_sprite_part(spriteIndex,moleImageIndex,0,0,sprite_get_width(spriteIndex),sprite_get_height(spriteIndex) - moleYOffset,x - spriteXOrigin,y - spriteYOrigin + moleYOffset);
}
#endregion