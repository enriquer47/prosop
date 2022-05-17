/// @desc crearOnda(x,y,edad,escala,trasparencia)
/// @arg x
/// @arg y
/// @arg intensidad

with(obj_shockwave_distortion_normals){
var new_wave = ds_list_create();
new_wave[|waveparam.xx]= argument0;
new_wave[|waveparam.yy]= argument1;
new_wave[|waveparam.age]= 0*argument2;
new_wave[|waveparam.scale]= 0*argument3;
new_wave[|waveparam.alpha]= 1*argument4;

ds_list_add(list_of_waves, new_wave);
}
