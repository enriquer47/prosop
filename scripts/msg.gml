///@desc msg(x,y,posicion,texto)
/// @arg x
/// @arg y
/// @arg posicion (1 encima -1 debajo)
/// @arg texto

if((place_meeting(argument0,argument1,oPlayer)||point_in_circle(oPlayer.x,oPlayer.y,argument0,argument1,300))&& keyboard_check_pressed(ord("G"))&& !instance_exists(oTexto))
{
    
    instance_create(oPlayer.x,oPlayer.y-250*argument2,oTexto);
    oTexto.texto=argument3;
}
