/// @desc lanzarC4(xvelInicial,dirHorz,dirVert)
///@arg xvel
/// @arg dirHorz
/// @arg dirvVert

newc4=instance_create(oPlayer.x+70*sign(argument0),oPlayer.y,oC4);
newc4.xvel=argument0+sign(argument2)*5;
newc4.yvel=-argument1*5;
oPlayer.c4--;
return newc4;