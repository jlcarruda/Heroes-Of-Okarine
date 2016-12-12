///activate_player(instance, x, y)
if(argument_count == 0){
    return 0;
}

var inst = argument[0];
var xx = argument[1];
var yy = argument[2];

if(inst == all){
    instance_activate_all();
}else{
    if(!is_undefined(xx) && !is_undefined(yy) && xx!=noone && yy!=noone){
        inst.x = xx + 200;
        inst.y = yy + 200;
    }else{
        inst.x = PlayerSpawn.x;
        inst.y = PlayerSpawn.y;
    }
    
    instance_activate_object(inst);
}
