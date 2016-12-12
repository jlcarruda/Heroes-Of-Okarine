///debug_camera_follow_player_state()

switch(ds_map_size(global.PlayerInstances)){
    case 1:
    //default:
        var playerObj = instance_find(Player,0 );     
    
        var targetx = playerObj.x+(playerObj.image_xscale*129);
        var targety = playerObj.y;
        
        camera_move_to_target(targetx, targety, global.camera_spd);           
        break;
    case 2:
        // Get the distance between the two players
        var p1 = ds_map_find_value(global.PlayerInstances, c_PLAYERONE_KEY);       
        var p2 = ds_map_find_value(global.PlayerInstances, c_PLAYERTWO_KEY);
        
        var xx = p1.x - p2.x;
        var yy = p1.y - p2.y; 
        
        var targetX = p1.x + xx/2;
        var targetY = p1.y + yy/2; 
        
        camera_move_to_target(targetX, targetY, global.camera_spd);
        
        break;
}



