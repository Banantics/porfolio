draw_set_halign(fa_left); // Set alignment for the score
draw_set_color(c_white);
draw_set_font(-1); // Use default font or set your own
draw_text(10, 10, "Money: $" + string(global.score));

// Draw the title screen text
if (show_title) {
    draw_set_halign(fa_center); // Center the title text
    draw_set_valign(fa_middle); // Center vertically
    draw_set_color(c_white);
    draw_set_font(-1); // Or your custom font
    draw_text(room_width/2, room_height/2 - 20, "PICK IT UP");
    draw_text(room_width/2, room_height/2, "Press any key to start");
}//