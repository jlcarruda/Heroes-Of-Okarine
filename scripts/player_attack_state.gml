///player_attack_state()

image_speed = .5;
sprite_index = sp_player_attack;

if(image_index >= 1 && image_index < 3 ){
    with(instance_create(x,y,PlayerAttackMask)){
        image_xscale = other.image_xscale;
        with(instance_place(x, y, P_EnemyObject)){
            hp -= Player.attack;
            vspd = -3;
            hspd = sign(x-other.x)*15;
        }
    }
}
