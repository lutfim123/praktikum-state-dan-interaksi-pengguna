# Evaluasi / Soal Latihan
## BAB 6: State dan Interaksi Pengguna

---

### Soal:
**Apa perbedaan antara *Stateless Widget* dan *Stateful Widget* dalam Flutter?**

---

### Jawaban:

Perbedaan utama antara **Stateless Widget** dan **Stateful Widget** terletak pada kemampuan widget dalam menyimpan dan memperbarui keadaan (*state*) internalnya sepanjang siklus hidup aplikasi.

Berikut adalah rincian perbandingannya secara komprehensif:

| Aspek Perbandingan | Stateless Widget | Stateful Widget |
| :--- | :--- | :--- |
| **Definisi State** | Tidak memiliki data atau keadaan internal yang dapat berubah (*immutable*). | Memiliki data atau keadaan internal yang dapat berubah sepanjang waktu (*mutable*). |
| **Sifat Tampilan (UI)** | Statis. UI hanya bergantung pada konfigurasi/input parameter awal yang diberikan ke widget tersebut. | Dinamis dan reaktif. UI dapat berubah secara dinamis merespons interaksi pengguna, pembaruan data, atau aksi asinkron. |
| **Siklus Hidup (*Lifecycle*)** | Sederhana. Hanya memiliki satu metode utama yaitu `build(BuildContext context)` yang dieksekusi saat widget dipasang. | Lebih kompleks. Memiliki siklus hidup widget lengkap seperti `createState()`, `initState()`, `didUpdateWidget()`, `build()`, dan `dispose()`. |
| **Mekanisme Re-render** | Hanya di-*rebuild* jika widget induknya (*parent*) melakukan *rebuild* dengan konfigurasi baru. | Dapat memicu *rebuild* subtree tampilannya sendiri kapan saja menggunakan pemanggilan metode `setState()`. |
| **Kebutuhan Memori & Kinerja** | Lebih ringan dan efisien secara komputasi karena tidak memerlukan objek state terpisah. | Memerlukan sedikit lebih banyak sumber daya karena menginstansiasi objek `State` terpisah untuk melacak perubahan. |
| **Contoh Penggunaan** | Menampilkan teks statis (`Text`), ikon (`Icon`), layout dekoratif (`Container`), atau tombol tanpa state lokal. | Penghitung angka (*counter*), formulir masukan teks (`TextField`), saklar/checkbox, animasi (`AnimatedContainer`), dan daftar dinamis (`ListView`). |

---

### Penjelasan Mendalam:

1. **Stateless Widget**:
   * Diturunkan dari kelas `StatelessWidget`.
   * Setelah widget dibuat, tampilannya tidak akan berubah kecuali widget induk merender ulang widget ini dengan argumen baru.
   * Contoh kode dasar:
     ```dart
     class GreetingWidget extends StatelessWidget {
       final String name;
       const GreetingWidget({super.key, required this.name});

       @override
       Widget build(BuildContext context) {
         return Text('Halo, $name!');
       }
     }
     ```

2. **Stateful Widget**:
   * Terdiri dari dua kelas:
     1. Kelas widget turunan `StatefulWidget` (bersifat immutable dan membuat state melalui `createState()`).
     2. Kelas pendamping turunan `State<T>` (tempat variabel *state* disimpan dan metode `build()` dijalankan).
   * Ketika ada perubahan variabel state di dalam fungsi `setState(() { ... })`, framework Flutter akan menjadwalkan ulang pemanggilan metode `build()` untuk memperbarui tampilan UI di layar sesuai nilai terbaru.
   * Contoh kode dasar:
     ```dart
     class CounterWidget extends StatefulWidget {
       const CounterWidget({super.key});

       @override
       State<CounterWidget> createState() => _CounterWidgetState();
     }

     class _CounterWidgetState extends State<CounterWidget> {
       int _count = 0;

       @override
       Widget build(BuildContext context) {
         return ElevatedButton(
           onPressed: () {
             setState(() {
               _count++;
             });
           },
           child: Text('Klik: $_count'),
         );
       }
     }
     ```

---

### Kesimpulan:
Gunakan **Stateless Widget** jika tampilan hanya menampilkan data statis dan tidak perlu bereaksi terhadap perubahan data internal. Gunakan **Stateful Widget** jika tampilan perlu berubah secara dinamis berdasarkan interaksi pengguna (input teks, klik tombol, gestur) atau pembaruan data secara real-time.
