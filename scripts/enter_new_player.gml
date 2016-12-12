///enter_new_player()

/*Script that will be checking if another input 
was connected, then it will change the configuration of 
Camera, define the input to the new player and create 
another instance of Player*/

// If a new gamepad is discovered
if(ds_map_read(async_load, "gamepad discovered") || gamepad_is_connected(ds_map_read(async_load, "gamepad discovered"))){
    // If the gamepad discovered isn't the gamepad from the Player One
    if(ds_map_read(async_load, "gamepad discovered") != ds_map_find_value(global.PlayerInputs, c_PLAYERONE_KEY)){
        var p1 = ds_map_find_value(global.PlayerInstances, c_PLAYERONE_KEY);
        create_player();
        var p2 = ds_map_find_value(global.PlayerInstances, c_PLAYERTWO_KEY);
        
        p2.x = p1.x;
        p2.y = p1.y;
        p2.depth = -1;
    }
}

