///get_input(device)

var dvc = argument0;

if(dvc == "kb"){
    up = keyboard_check(ord('W'));
    down = keyboard_check(ord('S'));
    left = keyboard_check(ord('A'));
    right = keyboard_check(ord('D'));
    
    jump = keyboard_check(ord('W'));
    light_attack = mouse_check_button_pressed(mb_left);
    heavy_attack = mouse_check_button_pressed(mb_right);
    dash = keyboard_check(vk_space);
    
    menu = keyboard_check(vk_tab);

    //If gamepad is supported and passed device is connected
}else if(global.gamepad_supported && gamepad_is_connected(dvc)){
    up = gamepad_axis_value(dvc, gp_axislv) > 0;
    down = gamepad_axis_value(dvc, gp_axislv) < 0;
    left = gamepad_axis_value(dvc, gp_axislh) < 0;
    right = gamepad_axis_value(dvc, gp_axislh) > 0;
    
    jump = gamepad_button_check(dvc, gp_face1);
    light_attack = gamepad_button_check(dvc, gp_shoulderr);
    heavy_attack = gamepad_button_check(dvc, gp_shoulderrb);
    dash = gamepad_button_check(dvc, gp_face2);

    menu = gamepad_button_check(dvc, gp_start);
}
