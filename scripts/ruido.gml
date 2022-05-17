/// @desc ruido(x,y,intensidad,sonidoId)
/// @arg x
/// @arg y
/// @arg intensidad
/// @arg sonido (0 para ninguno)

onda=instance_create(argument0,argument1,oInicioOnda);
onda.intensidad=argument2;
crearOnda(argument0,argument1,argument2,1,1);
if(argument3!=0)
    audio_play_sound(argument3,1,0);

