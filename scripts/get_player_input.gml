///get_player_input(player_key)

var player_dvc = ds_map_find_value(global.PlayerInputs, argument0);
//show_debug_message(player_dvc);
if(!is_undefined(player_dvc)){
    get_input(player_dvc);
}
