/// @desc locks(locknumero)
/// @arg locknumero


switch(argument0)
{
    case 1:
        instance_create(0,0,oLock1);
        break;
    case 2:
        instance_create(0,0,oLock1);//lock 2
        break;
    case 3:
        instance_create(0,0,oLock1);//lock 3
        break;
}