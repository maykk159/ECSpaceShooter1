// save_high_scores.gml

function save_high_scores() {
    var file = file_text_open_write("high_scores.ini"); // Dosyayı yazma modunda aç
    if (file != -1) { // Dosya doğru şekilde açıldıysa
        for (var i = 0; i < ds_list_size(global.high_scores); i++) {
            file_text_write_real(file, ds_list_find_value(global.high_scores, i)); // Skoru dosyaya yaz
            file_text_write_line(file); // Satır sonu ekle
        }
        file_text_close(file); // Dosyayı kapat
    } else {
        show_message("Dosya yazma hatası!");
    }
}
