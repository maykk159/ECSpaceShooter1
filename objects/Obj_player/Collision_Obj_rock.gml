
if (powerup == 2) exit;

if (shield_active) {
    shield_active = false; 
    image_blend = normal_color;  
    with (other) {
        instance_destroy(); 
    }
    exit; 
} else {
   
        instance_destroy();
    }



effect_create_above(ef_firework, x, y, 1, c_white);

// obj_player: Collision Event (with asteroid)

/*
save_high_scores(); // Skorları kaydet
global.player_score = 0; // Skoru sıfırla
*/

instance_destroy();
Obj_game_manager.alarm[0] = 120;



