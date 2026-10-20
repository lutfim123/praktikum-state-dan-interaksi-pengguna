# Praktikum Mobile Programming - BAB 6: State dan Interaksi Pengguna

Repository ini berisi implementasi seluruh latihan praktikum dan jawaban evaluasi untuk **BAB 6: State dan Interaksi Pengguna** menggunakan Flutter.

---

## 📁 Daftar Proyek Praktikum

1. **`flutter_state/`** (Hal. 70–74)
   * **Topik:** Memperbarui Tampilan dengan `setState()`
   * **Deskripsi:** Aplikasi penghitung (*counter*) sederhana menggunakan `StatefulWidget` di mana nilai variabel `_counter` bertambah setiap tombol FloatingActionButton ditekan dan UI diperbarui secara reaktif menggunakan `setState()`.
   * **File Utama:** [`flutter_state/lib/main.dart`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/flutter_state/lib/main.dart)

2. **`proses_input/`** (Hal. 76–81)
   * **Topik:** Memproses Masukan Pengguna (*User Input*)
   * **Deskripsi:** Implementasi widget `TextField` dengan event handler `onChanged` untuk menangkap input teks langsung dari pengguna dan merender nilai teks tersebut ke layar secara real-time.
   * **File Utama:** [`proses_input/lib/main.dart`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/proses_input/lib/main.dart)

3. **`flutter_callback/`** (Hal. 83–86)
   * **Topik:** Menggunakan Fungsi Callback
   * **Deskripsi:** Implementasi fungsi *callback* modular `_showMessage(String message)` yang dipanggil saat `ElevatedButton` ditekan (`onPressed`), mencetak log pesan ke konsol debug.
   * **File Utama:** [`flutter_callback/lib/main.dart`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/flutter_callback/lib/main.dart)

4. **`flutter_animasi/`** (Hal. 89–94)
   * **Topik:** Menambahkan Animasi Sederhana
   * **Deskripsi:** Menggunakan widget implisit `AnimatedContainer` dengan properti `duration` (1 detik) dan transisi `Curves.easeInOut`. Ketika tombol floating action button ditekan, warna background kotak bertransisi secara halus dari biru ke merah muda (*pink*).
   * **File Utama:** [`flutter_animasi/lib/main.dart`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/flutter_animasi/lib/main.dart)

5. **`flutter_dinamis/`** (Hal. 95–100)
   * **Topik:** Membuat Tampilan Dinamis (*Dynamic List*)
   * **Deskripsi:** Implementasi `ListView.builder` yang menampilkan daftar item dinamis (`items`). Pengguna dapat menambahkan item baru ke dalam daftar secara langsung melalui input `TextField` dan `IconButton` tambah (`+`).
   * **File Utama:** [`flutter_dinamis/lib/main.dart`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/flutter_dinamis/lib/main.dart)

---

## 📄 Dokumen Evaluasi & Latihan
* **[`EVALUASI_SOAL_LATIHAN.md`](file:///d:/Programmer/mobile%20programmer/praktikum%20state%20dan%20interaksi%20pengguna/EVALUASI_SOAL_LATIHAN.md)**: Jawaban lengkap soal evaluasi BAB 6 mengenai perbedaan mendasar antara *Stateless Widget* dan *Stateful Widget* dalam Flutter.

---

## 🚀 Cara Menjalankan Proyek

Pilih salah satu folder proyek yang ingin dijalankan, masuk ke foldernya, dan jalankan perintah `flutter run`:

```bash
# Contoh: menjalankan proyek flutter_state di Chrome
cd flutter_state
flutter run -d chrome
```
