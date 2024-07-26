// load_high_scores.gml

function load_high_scores() {
    if (file_exists("high_scores.ini")) {
        var file = file_text_open_read("high_scores.ini"); // Dosyayı okuma modunda aç
        if (file != -1) { // Dosya doğru şekilde açıldıysa
            var i = 0;
            while (!file_text_eof(file) && i < ds_list_size(global.high_scores)) {
                var line = file_text_read_string(file); // Dosyadan satırı oku
                var score_value = real(line); // Satırı sayısal değere çevir
                ds_list_replace(global.high_scores, i, score_value); // Listeye ekle
                i++;
            }
            file_text_close(file); // Dosyayı kapat
        } else {
            show_message("Dosya okuma hatası!");
        }
    } else {
        show_message("Skor dosyası bulunamadı!"); // Dosya yoksa hata mesajı göster
    }
}
