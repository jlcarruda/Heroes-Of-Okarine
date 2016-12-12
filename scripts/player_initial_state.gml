///player_initial_state()


if(left){
    if (hspd > -maxspd) hspd-=spd;
    image_xscale = -1;
    image_speed = - (hspd/maxspd*.8);    
    //sprite_index = sp_alt_walk;    
    
}

if(right){
    if (hspd < maxspd) hspd+=spd;
    image_xscale = 1;
    image_speed = hspd/maxspd*.8;
    //sprite_index = sp_alt_walk;    
}

if(!left && !right){
    sprite_index = sp_player;
    image_speed = spd/maxspd;
}

if(light_attack){
    image_index = 0;
    state = player_attack_state;
}

if(jump && place_meeting(x, y+1, P_SolidObject)){
    vspd += jump_force;    
}
