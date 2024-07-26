// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_high_scores(new_score) {
    var updated = false;
    for (var i = 0; i < ds_list_size(global.high_scores); i++) {
        if (new_score > ds_list_find_value(global.high_scores, i)) {
            ds_list_insert(global.high_scores, i, new_score);
            ds_list_delete(global.high_scores, ds_list_size(global.high_scores) - 1); // Sonuncu skoru sil
            updated = true;
            break;
        }
    }
    if (!updated && ds_list_size(global.high_scores) < 5) {
        ds_list_add(global.high_scores, new_score);
    }
}
