///ai_initial_state()

var dir = sign(Objective.x - x);

if(place_meeting(x, y+1, P_SolidObject)){
    
    if(hspd < maxspd && dir == 1) || (hspd > -maxspd && dir == -1) hspd += spd*dir;
    image_speed = hspd/maxspd*.4;
    sprite_index = sp_enemy_zombie_walk;
    image_xscale = dir;
    
}

// Emulate attack state
if(place_meeting(x+1, y, Player) || place_meeting(x+1, y, Objective)){
    hspd = 0;
    sprite_index = sp_enemy_zombie_idle;
    state = ai_attack_state;    
}

// Check for platforms to jump into
if(Objective.y < y && position_meeting(x + sprite_width*dir, y-((sprite_height/2)+10), P_SolidObject)){
    vspd += -15
}



