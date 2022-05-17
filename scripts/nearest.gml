/// @desc nearest(obj_to_find)
/// @arg obj

obj=argument0;
result=noone;
if(instance_exists(obj)){
obje[instance_number(obj)]=0;
for(i=0;i<instance_number(obj);i++)
    obje[i]=instance_find(obj,i);
mindist=abs(obje[0].x-x)+abs(obje[0].y+y);
result=obje[0];
for(i=1;i<instance_number(obj);i++)
{
    if(abs(obje[i].x-x)+abs(obje[i].y+y)<mindist)
    {
        mindist=abs(obje[i].x-x)+abs(obje[i].y+y);
        result=obje[i];
    }
}
return result;   
}else
    return -1;