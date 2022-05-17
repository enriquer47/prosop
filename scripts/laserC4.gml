///@desc laserC4
///@arg direccion
///@arg x
///@arg y
if((argument0==1||argument0==0)&&!place_meeting(x,y-15,oSuelo)){
        instance_create(argument1,argument2,oLaser);
        laserC4(argument0,argument1,argument2-20);
    }
