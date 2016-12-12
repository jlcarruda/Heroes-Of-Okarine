///assign_input_to_player(player_key, dvc)

var pKey = argument0;
var dvc = argument1;

var is_used = false;
// Check if its not being used
for (var i = 0; i < array_length_1d(global.PlayerKeys); i++){
    var key = global.PlayerKeys[i];
    if(ds_map_find_value(global.PlayerInputs, key) == dvc){
        is_used = true;
    }
}

if(!is_used){
    switch(dvc){
        case "kb":
            ds_map_replace(global.PlayerInputs, pKey, "kb");
            break;
        default:
            // See if its a valid dvc number
            if(dvc >= 0 && dvc < 4){
                gamepad_set_axis_deadzone(dvc, 0.8);
                ds_map_replace(global.PlayerInputs, pKey, dvc);                        
            }
    }
}else if(global.SystemInstance.system_state == c_SYSTEMSTATE_DEBUG){
    show_error("Tried to assign device " + string(dvc) + " to player, but device is being used", true);
}

