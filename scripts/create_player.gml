///create_player()

var player_count = ds_map_size(global.PlayerInstances);

if(player_count < 2){
    switch(player_count+1){
        case 1:
            var player = instance_create(0, 0, Player);
            player.key = c_PLAYERONE_KEY;
            ds_map_add(global.PlayerInstances, c_PLAYERONE_KEY, player);
            break;
        case 2:
            var player = instance_create(0, 0, Player);
            player.key = c_PLAYERTWO_KEY;
            ds_map_add(global.PlayerInstances, c_PLAYERTWO_KEY, player);
            break;  
    }
}
