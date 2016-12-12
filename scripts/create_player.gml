///create_player()

var player_count = ds_map_size(global.PlayerInstances);

if(player_count < 2){
    var player = instance_create(0, 0, Player);
    instance_deactivate_object(player);
    switch(player_count+1){
        case 1:
            player.key = c_PLAYERONE_KEY;
            break;
        case 2:
            player.key = c_PLAYERTWO_KEY;
            break;  
    }
    ds_map_add(global.PlayerInstances, player.key, player);
    return player;
}
