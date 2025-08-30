var mx = keyboard_check(vk_right) - keyboard_check(vk_left);
var my = keyboard_check(vk_down) - keyboard_check(vk_up);

// Acelera suavemente
if (mx != 0) hspeed += mx * acceleration;
if (my != 0) vspeed += my * acceleration;

// Limita a velocidade máxima
var spd = point_distance(0,0,hspeed,vspeed);
if (spd > max_speed) {
    var dir = point_direction(0,0,hspeed,vspeed);
    hspeed = lengthdir_x(max_speed, dir);
    vspeed = lengthdir_y(max_speed, dir);
}
