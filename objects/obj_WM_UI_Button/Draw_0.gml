///@description Draw

#region Default Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Sprite
if (sprite != -1) draw_sprite_ext(sprite,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Text
scribble(text).align(fa_center,fa_middle).scale(3).draw(x,y);
#endregion