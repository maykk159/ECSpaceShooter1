/// @description Insert description here
// You can write your code in this editor
if (Obj_game_manager.powerup_time < 0) {
	var _obj =choose(obj_powerup_spread, obj_powerup_ghost, obj_powerup_shield);
	instance_create_layer(x, y, "Instances", _obj);
	Obj_game_manager.powerup_time = 20;
}


instance_destroy(other);
effect_create_above(ef_explosion, x, y, 2, c_white);
direction = random(360);

if sprite_index ==spr_rock_big
{
	sprite_index =spr_rock_small;
	instance_copy(true);
	sprite_index =spr_rock_small2;
}

else if instance_number(Obj_rock) < 18
{
sprite_index = spr_rock_big;
x = -100;
}
else{
	instance_destroy();
}
Obj_game_manager.points +=50;
/*

global.player_score += 50;
*/