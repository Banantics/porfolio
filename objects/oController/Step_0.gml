//step
// --- START GAME LOGIC ---
if (show_title && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any))) {
    show_title = false;
    //  THIS IS THE NEW LINE 
    // Spawn the player when the game starts
    // Place them in the middle of the room horizontally, and on the floor.
    // Replace 400 with the y-coordinate of your floor.
    instance_create_layer(room_width / 2, 400, "Instances", oPlayer);
}
// --- GAME LOGIC (RUNS AFTER START) ---
// Only spawn trash bags if the game is not on the title screen
if (!show_title) {
    // Increase the spawn timer
    spawn_timer += 1;
    // Spawn a trash bag every second
    if (spawn_timer >= room_speed) {
        // Random position at the TOP of the room
        var xx = random(room_width);
        instance_create_layer(xx, -32, "Instances", oTrashbag); // Spawn just above the screen
        spawn_timer = 0;
    }
}