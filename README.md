# funko_shop_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


TUGAS 7 
1. Jelaskan apa itu Widget Tree pada Flutter dan hubungan parent-child.
Widget Tree adalah struktur yang menggambarkan bagaimana tampilan aplikasi Flutter disusun. Hubungan parent-child (induk-anak) bekerja seperti pohon keluarga, widget "Parent" dapat memiliki satu atau lebih widget "Child" di dalamnya. Properti atau aturan tata letak dari Parent sering kali diturunkan atau mempengaruhi bagaimana Child ditampilkan.
2. Sebutkan Widget yang digunakan dlaam proyek ini dan fungsinya.
MaterialApp: Widget root yang mengatur tema dan konfigurasi dasar aplikasi.
Scaffold: Menyediakan struktur dasar visual material design, seperti AppBar dan Body.
AppBar: Menampilkan baris judul di bagian atas aplikasi.
Text: Menampilkan teks sederhana di layar.
Padding: Memberikan jarak (ruang kosong) di sekeliling widget anaknya.
Center: Mengatur posisi widget anaknya agar berada tepat di tengah.
Column: Menyusun widget anak-anaknya secara vertikal (atas ke bawah).
Row: Menyusun widget anak-anaknya secara horizontal (kiri ke kanan).
SizedBox: Kotak kosong yang digunakan untuk memberi jarak antar elemen.
Icon: Menampilkan simbol grafis atau ikon.
Material: Digunakan untuk memberikan efek material (seperti warna latar) pada tombol kustom.
InkWell: Memberikan efek respons sentuhan (efek riak air) ketika widget ditekan.
Container: Wadah serbaguna untuk membungkus widget lain, mengatur padding, dan dimensi.
SnackBar: Widget pop-up sementara di bagian bawah layar untuk menampilkan pesan.
3. Apa fungsi dari widget MaterialApp? Mengapa sering jadi widget root?
MaterialApp berfungsi sebagai wadah utama yang menerapkan gaya desain Material Design dari Google. Ia menyediakan fitur-fitur penting seperti tema global (ThemeData), navigasi (routing), dan lokalisasi. Ia sering digunakan sebagai root karena membungkus seluruh aplikasi dengan konfigurasi standar yang diperlukan agar widget-widget Material lainnya (seperti Scaffold) dapat bekerja dengan benar.
4. Jelaskan perbedaan StatelessWidget dan StatefulWidget. Kapan memilihnya?
StatelessWidget: Widget yang bersifat statis atau tidak berubah (immutable) setelah dibuat. Tampilannya hanya bergantung pada konfigurasi awal.
Kapan dipilih: Gunakan saat bagian UI tersebut tidak perlu berubah selama aplikasi berjalan (contoh: Teks judul, Ikon).
StatefulWidget: Widget yang bersifat dinamis dan dapat berubah (mutable). Ia memiliki objek "State" yang menyimpan data yang bisa diperbarui.
Kapan dipilih: Gunakan saat tampilan perlu berubah akibat interaksi pengguna atau data baru (contoh: Checkbox, Kolom input teks, Animasi)
5. Apa itu BuildContext dan mengapa penting?
BuildContext adalah referensi yang menunjukkan lokasi sebuah widget di dalam Widget Tree. Ini penting karena Flutter menggunakannya untuk mencari data atau widget lain di dalam tree, seperti mencari tema (Theme.of(context)) atau navigasi (Navigator.of(context)). Di metode build, context digunakan untuk menggambar widget sesuai dengan posisinya saat ini dalam struktur aplikasi.
6. Jelaskan konsep "hot reload" vs "hot restart".
Hot Reload: Fitur yang memungkinkan pengembang melihat perubahan kode secara instan tanpa kehilangan state aplikasi saat ini. Ini sangat cepat karena hanya menyuntikkan file kode yang berubah ke dalam Dart Virtual Machine (VM).
Hot Restart: Memuat ulang aplikasi sepenuhnya dari awal. Ini memakan waktu sedikit lebih lama daripada hot reload dan akan mereset state aplikasi kembali ke kondisi awal (seperti restart aplikasi).

Tugas 8
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter.
Navigator.push():
Fungsi: Menambahkan halaman baru ke paling atas tumpukan (stack) navigasi. Halaman sebelumnya tetap ada di bawahnya.
Efek: Pengguna bisa kembali ke halaman sebelumnya menggunakan tombol Back (di AppBar atau tombol fisik HP).
Penggunaan di Aplikasi Ini: Digunakan saat menekan tombol "Create Prouct" di halaman utama. Kita ingin pengguna masuk ke form, tapi jika mereka berubah pikiran atau selesai, mereka bisa menekan Back untuk kembali melihat daftar produk.
Navigator.pushReplacement():
Fungsi: Menghapus halaman yang sedang aktif dari tumpukan navigasi dan menggantinya dengan halaman baru.
Efek: Pengguna tidak bisa kembali ke halaman sebelumnya dengan tombol Back, karena halaman tersebut sudah dibuang dari memori stack.
Penggunaan di Aplikasi Ini: Digunakan pada navigasi Drawer (menu samping). Saat pindah dari "Halaman Utama" ke "Tambah Produk" (atau sebaliknya), kita tidak ingin menumpuk halaman terus-menerus. Ini mencegah tombol Back membawa pengguna berputar-putar di antara menu yang sama.
2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten?
Saya menggunakan widget-widget ini sebagai kerangka dasar (skeleton) di setiap halaman (menu.dart dan productentry_form.dart):
Scaffold: Digunakan sebagai root visual di setiap halaman. Ia menyediakan struktur standar material design (ruang untuk app bar di atas, body di tengah, drawer di samping). Dengan menggunakan Scaffold di setiap file layar, aplikasi memiliki layout dasar yang seragam.
AppBar: Ditempatkan di properti appBar milik Scaffold. Ini memastikan setiap halaman memiliki judul di bagian atas dan ikon menu (hamburger) atau tombol back yang konsisten posisinya.
Drawer: Ditempatkan di properti drawer milik Scaffold. Dengan memanggil widget LeftDrawer (yang kita buat terpisah) di setiap halaman, pengguna bisa mengakses menu navigasi dari mana saja dengan tampilan yang sama persis.
3. Apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView?
Padding:
Kelebihan: Memberikan jarak visual (ruang bernapas) antara elemen UI agar tidak terlihat sesak dan menempel ke tepi layar.
Contoh Penggunaan: Saya membungkus setiap TextFormField dengan Padding agar input teks tidak menempel satu sama lain, membuatnya lebih enak dilihat dan mudah diklik.
SingleChildScrollView:
Kelebihan: Memungkinkan konten untuk digulir (scroll) jika ukurannya melebihi tinggi layar. Ini sangat krusial untuk menghindari error overflow (garis kuning-hitam).
Contoh Penggunaan: Saya membungkus seluruh Form di halaman tambah produk. Ini penting agar saat keyboard muncul dan layar menjadi sempit, pengguna masih bisa menggulir ke bawah untuk menekan tombol "Save".
ListView:
Kelebihan: Menyusun daftar item secara linier (vertikal/horizontal) dan otomatis membuatnya bisa di-scroll. Lebih efisien daripada Column untuk daftar yang panjang.
Contoh Penggunaan: Digunakan di dalam Drawer. Ini memungkinkan menu samping menampung banyak opsi navigasi (Home, Tambah Produk, dll) tanpa takut konten terpotong di layar HP yang kecil.
4. Bagaimana kamu menyesuaikan warna tema agar konsisten?
Saya mendefinisikan tema secara global di file main.dart menggunakan ThemeData. Saya menggunakan colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo). Ini secara otomatis menghasilkan palet warna turunan yang harmonis berdasarkan warna dasar Indigo. AppBar menggunakan warna primer (Indigo). DrawerHeader menggunakan warna yang sama untuk konsistensi branding. Tombol Save dan fokus pada form input juga mengikuti skema warna ini.
