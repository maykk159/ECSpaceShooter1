/// @description Insert description here
// You can write your code in this editor
draw_text(10, 10, points);
// obj_ui: Draw Event
/*


// Fontu ayarlayın
draw_set_font(fnt_menu);

// Mevcut skoru sol üst köşeye yazdır
draw_text(10, 10, "Score: " + string(global.player_score));

// En yüksek skorları sağ üst köşeye yazdır
var y_offset = 10;
var margin = 10; // Sağdan ve yukarıdan boşluk bırakmak için margin değeri

// High Scores başlığının genişliğini hesaplayın
var high_scores_text = "High Scores:";
var text_width = string_width(high_scores_text);

// Ekranın sağından ve yukarısından margin kadar boşluk bırakın
var x_offset = room_width - text_width - margin;

draw_text(x_offset, y_offset, high_scores_text);

for (var i = 0; i < ds_list_size(global.high_scores); i++) {
    y_offset += 20; // Her skor için satır satır ilerleyin
    draw_text(x_offset, y_offset, string(ds_list_find_value(global.high_scores, i)));
}


*/
