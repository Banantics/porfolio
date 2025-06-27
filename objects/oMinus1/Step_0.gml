y -= 1; // Move up
life -= 1;
alpha -= 1/30; // Fade out over 30 frames
if (life <= 0) instance_destroy();