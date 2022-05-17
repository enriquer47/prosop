/// @desc sEstelaBala(estelaNumero,x,y,dir)
/// @arg estelaNumero
/// @arg x
/// @arg y
/// @arg dir

if(argument0<15){
    estela=instance_create(argument1-11*sign(oPlayer.image_xscale),argument2,oEstela);
    if(instance_exists(estela)){
    estela.dir=argument3;
    estela.numerosig=argument0;
    estela.image_yscale=max(0.2/(argument0/4),0.1);
    return estela;
    }
    }