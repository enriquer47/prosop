/// @desc lanzarPiedra(xvelInicial,dirVert,dirHorz,fuerza)
/// @arg xvelInicial
/// @arg dirVert
/// @arg dirHorz
/// @arg fuerza

newpiedra=instance_create(oPlayer.x+70*sign(argument0),oPlayer.y,oPiedra);
newpiedra.xvel=argument0+sign(argument2)*3+argument3*1.5*sign(argument2);
newpiedra.yvel=-argument1*5-5;
oPlayer.piedras--;
return newpiedra;