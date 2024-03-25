if (place_meeting(x + hspeed, y, oWall)) {
    hspeed = -hspeed;
}

if (place_meeting(x, y + vspeed, oWall)) {
    vspeed = -vspeed;
}
if (place_meeting(x, y, oDeath)) {
    hspeed = 0;
    vspeed = 0;
    instance_create_layer(x, y, "Inst", oGameOver);
}
