///GameStartScript()

global.gamepad_supported = gamepad_is_supported();
global.camera_spd = .3;

global.player_score = 0;

global.SystemInstance = instance_create(0,0,System); // System Instance
global.PlayerInputs = ds_map_create(); // Player Inputs Manager
global.PlayerInstances = ds_map_create(); // Instances of players
ds_map_add(global.PlayerInputs, c_PLAYERONE_KEY, noone);
ds_map_add(global.PlayerInputs, c_PLAYERTWO_KEY, noone);


//Array for Player Keys
global.PlayerKeys[0] = c_PLAYERONE_KEY;
global.PlayerKeys[1] = c_PLAYERTWO_KEY;

if(global.gamepad_supported && gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, 0.8);
    assign_input_to_player(c_PLAYERONE_KEY, 0);
    create_player();
}else{
    assign_input_to_player(c_PLAYERONE_KEY, "kb");
    create_player();
}

///DEBUG----------
activate_player(ds_map_find_value(global.PlayerInstances, c_PLAYERONE_KEY));




