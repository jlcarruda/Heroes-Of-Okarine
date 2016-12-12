if(can_attack){
    alarm_set(0,50);
    if(place_meeting(x, y+1, Player)){
        with(Player){
            hp -= other.attack;
            vspd = -3;
            hspd = sign(x - other.x)*15
        }
    }else if(place_meeting(x, y+1, Objective)){
        with(Objective){
            hp -= other.attack;
        }   
    }
}

if(!place_meeting(x, y+1, Player)){
    state = ai_initial_state;
}




