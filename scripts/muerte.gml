/// @desc muerte(habitacion)
/// @arg habitacion

with(oPlayer)
{
    if(room==rHabitacion)
    {
            with(oPolvo)
        {
            part_system_destroy(polvo);
            part_particles_clear(polvo);
            instance_destroy();
        }
    }
    xspeed=0;
    yspeed=0;
    habit(argument0);
    x=1180;
    y=650;
    timeline_index = tmMuerte;
    timeline_position = 0;
    timeline_running = true;
}