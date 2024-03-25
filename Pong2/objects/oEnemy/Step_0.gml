// Get the y-coordinate of the ball
var ball_y = oBall.y;
var threshold = 5;
var step_size = 3; // Adjust this value to control the speed

// Check if the absolute difference between the ball's y-coordinate and the computer player's y-coordinate exceeds the threshold
if (abs(ball_y - y) > threshold) {
    // Calculate the direction of movement
    var movement_sign = sign(ball_y - y);
    
    // Move the computer player one step at a time towards the ball's y-coordinate
    if (!place_meeting(x, y + (movement_sign * step_size), oWall)) {
        y += movement_sign * step_size;
    }
}