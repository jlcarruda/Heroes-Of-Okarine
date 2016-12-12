///debug_camera_follow_player_state()
if(instance_number(Player) > 0){
    // Get the first player and see if its in the room;
    var playerObj = instance_find(Player,0 );     
    
    var targetx = playerObj.x+(playerObj.image_xscale*129);
    var targety = playerObj.y;
    
    camera_move_to_target(targetx, targety, global.camera_spd);   
}



