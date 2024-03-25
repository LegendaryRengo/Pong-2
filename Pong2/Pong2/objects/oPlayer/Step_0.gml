// Player Movement
move = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var new_y = y + move * spd;

// Collision Handling with Wall object
if (place_meeting(x, new_y, oWall)) {
    var movement_sign = sign(move);
    while (!place_meeting(x, y + movement_sign, oWall)) {
        y += movement_sign;
    }
} else {
    y = new_y;
}