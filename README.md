# 🚀 Personal Portfolio Mobile - Django

[![Status](https://img.shields.io/badge/Status-Completed-success?style=flat-square)](https://img.shields.io/badge/Status-Completed-success?style=flat-square)
[![Django](https://img.shields.io/badge/Django-5.x-092E20?style=flat-square&logo=django&logoColor=white)](https://www.djangoproject.com/)
[![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?style=flat-square&logo=python&logoColor=white)](https://www.python.org/)
[![Campus](https://img.shields.io/badge/Univ-Universitas%20Indonesia-blue?style=flat-square)](https://www.ui.ac.id/)

---

## 👩‍💻 Identitas Mahasiswa

| Atribut | Keterangan |
| :--- | :--- |
| **Nama** | Khalisha Nalani Chandra |
| **NPM** | 2506625041 |
| **Kelas** | PBP A |
| **Program Studi** | Sistem Informasi |
| **Hobi** | Coding & Ice Skating |

---

## 📚 Refleksi Pembelajaran

📚 Assignment 7 — Basic Flutter

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

## 🤖 AI Disclosure

📚 Assignment 7 — Basic Flutter 
Selama mengerjakan tugas ini, aku menggunakan AI untuk membantu memahami materi Flutter dan mencari solusi ketika mengalami error.

- **Bantuan:** Memahami widget, memisahkan file, dan memperbaiki konfigurasi Flutter.
- **Kendala:** Awalnya aku cukup bingung mengatur hubungan antar-widget dan layout. Aku juga sempat mengalami masalah PATH Flutter dan Dart.
- **Evaluasi:** Solusi AI tidak selalu bisa langsung digunakan, jadi aku tetap mencoba, menyesuaikan kode, menjalankan aplikasi di Chrome, dan mengecek hasilnya dengan `flutter analyze`.

Dari proses ini, aku belajar bahwa AI bisa membantu, tetapi aku tetap perlu memahami kode yang digunakan.
