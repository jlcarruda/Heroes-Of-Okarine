///activate_player(instance)
if(argument0 == all){
    instance_activate_all();
}else{
    argument0.x = PlayerSpawn.x;
    argument0.y = PlayerSpawn.y;
    instance_activate_object(argument0);
}
