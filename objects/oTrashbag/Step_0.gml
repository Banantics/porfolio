//step
//stepevent
// Increase the timer
life_timer += 1;
// If the trash bag has existed for more than 5 seconds (room_speed = 60)
if (life_timer > room_speed * 5) {
    // Subtract $1 from the score
    global.score -= 1;
    instance_create_layer(x, y - 16, "Instances", oMinus1); // Show -1 above the bag
    instance_destroy();
}