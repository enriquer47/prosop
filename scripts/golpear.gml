/// @desc golpear(xgolpe,ygolpe,dir,objGolpe)
/// @arg xpunio
/// @arg ypunio
/// @arg dir: 0 horizontal, 1 vertical

newgolpe=instance_create(oPlayer.x+argument0*oPlayer.image_xscale,oPlayer.y+argument1*oPlayer.image_yscale,argument3);
newgolpe.direccion=argument2;
return newgolpe;
