# ðŸš€ Personal Portfolio Website - Django

[![Status](https://img.shields.io/badge/Status-Completed-success?style=flat-square)](https://img.shields.io/badge/Status-Completed-success?style=flat-square)
[![Django](https://img.shields.io/badge/Django-5.x-092E20?style=flat-square&logo=django&logoColor=white)](https://www.djangoproject.com/)
[![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?style=flat-square&logo=python&logoColor=white)](https://www.python.org/)
[![Campus](https://img.shields.io/badge/Univ-Universitas%20Indonesia-blue?style=flat-square)](https://www.ui.ac.id/)

---

## ðŸ‘©â€ðŸ’» Identitas Mahasiswa

| Atribut | Keterangan |
| :--- | :--- |
| **Nama** | Khalisha Nalani Chandra |
| **NPM** | 2506625041 |
| **Kelas** | PBP A |
| **Program Studi** | Sistem Informasi |
| **Hobi** | Coding & Ice Skating |

---

## ðŸ“š Refleksi Pembelajaran

ðŸ“š Assignment 7 â€” Basic Flutter

1. Widget Tree

*Widget tree* adalah susunan widget yang membentuk tampilan aplikasi. Di project ini, `MaterialApp` menjadi root, lalu menampilkan `MyHomePage` yang berisi `Scaffold`, `AppBar`, dan berbagai widget lainnya. Aku menggunakan `Row` untuk kartu identitas dan `Column` untuk menyusun konten.

2. Widgets Used

Beberapa widget yang aku gunakan:

| Widget | Fungsi |
|---|---|
| `MaterialApp` | Konfigurasi utama aplikasi. |
| `Scaffold` | Kerangka halaman. |
| `AppBar` | Header aplikasi. |
| `Text` | Menampilkan teks. |
| `Row` & `Column` | Mengatur susunan widget. |
| `Padding` & `SizedBox` | Mengatur jarak. |
| `Center` | Memposisikan widget di tengah. |
| `GridView.count` | Menampilkan menu berbentuk grid. |
| `Card` & `Container` | Membuat tampilan kartu. |
| `Material` & `InkWell` | Membuat kartu berwarna dan bisa diklik. |
| `Icon` | Menampilkan ikon. |
| `SnackBar` | Menampilkan pesan setelah tombol ditekan. |

Aku juga membuat `MyHomePage`, `InfoCard`, dan `ItemCard` sebagai custom widget.

3. MaterialApp

`MaterialApp` menjadi root widget yang mengatur tema, navigasi, dan halaman awal aplikasi. Di project ini, aku menggunakannya supaya pengaturan tampilan bisa dibuat dari satu tempat.

4. StatelessWidget vs StatefulWidget

`StatelessWidget` cocok untuk tampilan yang tidak mengelola perubahan state, sedangkan `StatefulWidget` digunakan jika ada data yang berubah. Di project ini aku memakai `StatelessWidget` karena halaman dan kartu hanya menampilkan data. SnackBar tidak mengharuskan widget menjadi StatefulWidget.

5. BuildContext

`BuildContext` menunjukkan posisi widget di dalam widget tree. Aku menggunakannya untuk mengambil tema melalui `Theme.of(context)` dan menampilkan SnackBar melalui `ScaffoldMessenger.of(context)`.

6. Hot Reload vs Hot Restart

*Hot reload* menerapkan perubahan tanpa mengulang aplikasi dari awal, sedangkan *hot restart* menjalankan ulang aplikasi dan mereset state. Hot restart atau full restart diperlukan untuk perubahan tertentu yang tidak bisa diterapkan melalui hot reload, misalnya perubahan kode native.

---

ðŸ“š Assignment 8 â€” Flutter Navigation, Layouts, Forms, and Input Elements

1. Navigator.push() digunakan untuk membuka halaman baru tanpa menghapus halaman sebelumnya dari navigation stack. Navigator.pushReplacement() digunakan untuk membuka halaman baru sekaligus menggantikan halaman saat ini. Sementara itu, Navigator.pop() digunakan untuk kembali ke halaman sebelumnya.

Pada project ini, Navigator.push() digunakan untuk membuka halaman Add Project dari Drawer. Opsi Home pada Drawer menggunakan Navigator.pushReplacement() untuk kembali ke halaman utama sekaligus menggantikan halaman yang sedang dibuka.

2. Scaffold menyediakan struktur dasar halaman, AppBar menampilkan bagian atas halaman, sedangkan Drawer menyediakan navigasi. Ketiga itu membuat tampilan antarhalaman menjadi konsisten. Contoh, warna Colors.indigo dipakai untuk tema aplikasi dan header Drawer.

3. Aku menggunakan Column buat menyusun input secara vertikal, Padding dan SizedBox untuk mengatur jarak, serta SingleChildScrollView agar formulir dapat digulir ketika layar sempit atau keyboard muncul. Maka darii itu, tombol Simpan tetap dapat dijangkau.

4. GlobalKey<FormState> dipakai buat mengakses kondisi Form, validator memeriksa apakah setiap input sesuai dengan aturan, dan validate() menjalankan seluruh validasi ketika tombol Simpan ditekan.

Example, tahun 20ab ditolak cuz tdk memiliki format empat digit angka. Dengan memilih jenis input atau keyboard angka belum cukup karena pengguna masih mungkin memasukkan data yang tidak sesuai aturan. Maka dari itu, validasi tetap diperlukan untuk memastikan data akurat.

## ðŸ¤– AI Disclosure

ðŸ“š Assignment 7 â€” Basic Flutter 
Selama mengerjakan tugas ini, aku menggunakan AI untuk membantu memahami materi Flutter dan mencari solusi ketika mengalami error.

- **Bantuan:** Memahami widget, memisahkan file, dan memperbaiki konfigurasi Flutter.
- **Kendala:** Awalnya aku cukup bingung mengatur hubungan antar-widget dan layout. Aku juga sempat mengalami masalah PATH Flutter dan Dart.
- **Evaluasi:** Solusi AI tidak selalu bisa langsung digunakan, jadi aku tetap mencoba, menyesuaikan kode, menjalankan aplikasi di Chrome, dan mengecek hasilnya dengan `flutter analyze`.

Dari proses ini, aku belajar bahwa AI bisa membantu, tetapi aku tetap perlu memahami kode yang digunakan.

ðŸ“š Assignment 8 â€” Flutter Navigation, Layouts, Forms, and Input Elements
Selama mengerjakan Assignment 8, aku menggunakan AI untuk membantu memahami konsep Flutter dan menyelesaikan kendala dalam implementasi.

- **Bantuan:** Memahami navigasi menggunakan Navigator, penggunaan Drawer, pembuatan Form, validasi input, AlertDialog, dan widget testing.

- **Kendala:** awalnya aku mengalami masalah layout overflow pada Drawer dan beberapa widget test yang gagal.

- **Evaluasi:** aku memeriksa solusi yang diberikan AI dengan menjalankan aplikasi, mencoba validasi secara langsung, menjalankan flutter test, dan flutter analyze.

Melalui tugas ini, aku belajar bahwa AI dapat membantu proses pengembangan, tetapi aku tetap perlu memahami, memeriksa, dan menguji kode secara mandiri.

