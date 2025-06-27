// Get input
var move_input = 0;
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    move_input = 1;
} else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    move_input = -1;
}

var jump_key_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

// Set horizontal speed
hspd = move_input * move_speed;

// Handle animation
if (move_input != 0) {
    image_speed = 0.2;
    image_xscale = move_input;
} else {
    image_speed = 0;
    image_index = 0;
}

// Check if on ground BEFORE applying gravity
on_ground = place_meeting(x, y + 1, oFloor);

// Apply gravity if not on ground
if (!on_ground) {
    vspd += grav;
} else {
    // If we're on ground and falling, stop falling
    if (vspd > 0) {
        vspd = 0;
    }
}

// Jump only if on ground
if (on_ground && jump_key_pressed) {
    vspd = -jump_speed;
}

// HORIZONTAL MOVEMENT AND COLLISION
if (place_meeting(x + hspd, y, oFloor)) {
    // Move pixel by pixel until we hit the wall
    while (!place_meeting(x + sign(hspd), y, oFloor)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// VERTICAL MOVEMENT AND COLLISION
if (place_meeting(x, y + vspd, oFloor)) {
    // Move pixel by pixel until we hit floor/ceiling
    while (!place_meeting(x, y + sign(vspd), oFloor)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;