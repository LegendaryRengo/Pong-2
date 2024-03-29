instance_create_layer(x = oBall.x,y = oBall.y+30,"Shad",oBallShad)
game_start = 0;
randomize();
hspeed = choose(10, -10);
Inst = layer_get_id("Inst");