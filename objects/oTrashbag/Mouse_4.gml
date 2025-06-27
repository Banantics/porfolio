//left press
// Only allow clicking if game has started
if (!oController.show_title) {
    global.score += 5;
    instance_create_layer(x, y - 16, "Instances", oPlus5);
    instance_destroy();
}