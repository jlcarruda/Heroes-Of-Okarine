///player_onair_state()

if(image_index == 8 && !place_meeting(x, y+1, P_SolidObject)){
    image_speed = 0;
}

if(place_meeting(x, y+1, P_SolidObject)){
    state = player_initial_state;
}
