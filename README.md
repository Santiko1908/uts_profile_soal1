 <div align="center">

# 📱 APLIKASI PROFIL MAHASISWA

### Flutter Mobile Application — Pemrograman Mobile

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=20&duration=2500&pause=1000&color=00BFFF&center=true&vCenter=true&width=650&height=45&lines=Welcome+to+My+Flutter+Project!;Student+Profile+Application;Built+with+Flutter+%26+Dart;Developed+by+Angger+Santiko" alt="Typing Animation" />

<p>
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white" alt="Dart"/>
  <img src="https://img.shields.io/badge/Android-3DDC84?style=flat-square&logo=android&logoColor=white" alt="Android"/>
  <img src="https://img.shields.io/badge/Status-Development-blue?style=flat-square" alt="Status"/>
</p>

<br/>

**Aplikasi Profil Mahasiswa Berbasis Flutter**

*Implementasi pengembangan aplikasi mobile menggunakan Flutter dan bahasa pemrograman Dart.*

</div>

---

## 📖 Tentang Proyek

Aplikasi Profil Mahasiswa merupakan aplikasi mobile berbasis **Flutter** yang dikembangkan untuk memenuhi tugas praktikum mata kuliah Pemrograman Mobile.

Aplikasi ini dirancang untuk menampilkan informasi pribadi mahasiswa dalam bentuk antarmuka yang sederhana, modern, dan interaktif.

Aplikasi dilengkapi dengan beberapa fitur, seperti pengelolaan informasi profil, edit profil, penggantian foto, halaman About Me, navigasi menggunakan Drawer, serta dukungan tampilan Light Mode dan Dark Mode.

Proyek ini dibuat sebagai implementasi pemahaman penggunaan widget, pengelolaan state, navigasi antarhalaman, dan pengembangan antarmuka menggunakan Flutter.

---

## 👨‍💻 Identitas Mahasiswa

| Informasi | Detail |
|---|---|
| **Nama Lengkap** | Angger Santiko |
| **NIM** | 1124160099 |
| **Program Studi** | Teknik Informatika |
| **Kelas** | TISE24 Malam |
| **GitHub** | [@Santiko1908](https://github.com/Santiko1908) |
| **Mata Kuliah** | Pemrograman Mobile |

---

## 🎥 Video Demonstrasi

<div align="center">

**Video penjelasan dan demonstrasi aplikasi**


[![Watch Demo](https://img.shields.io/badge/▶_WATCH_DEMO-YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/9FxrbjV_5C4)


*Klik tombol di atas untuk melihat video penjelasan aplikasi.*

</div>

---

## 📸 Preview Aplikasi

<div align="center">

### 🔐 Login Page
<img width="1317" height="992" alt="tampilan login" src="https://github.com/user-attachments/assets/2a0eeb2a-0c48-4e22-9cb4-a9649008636d" />


### 👤 Halaman Profil Utama
<img width="1317" height="1002" alt="Edit profil" src="https://github.com/user-attachments/assets/83e04c7f-9fd4-46ce-8580-5bef96e6a32f" />


### ℹ️ About Me
<img width="1322" height="1000" alt="tampilan about me" src="https://github.com/user-attachments/assets/107cf00c-f1f7-4a4c-b79b-4a3c784372b0" />


### ✏️ Edit Profil
<img width="1317" height="1002" alt="Edit profil" src="https://github.com/user-attachments/assets/26ed1ef8-d8b5-494e-b0c3-e3488dcd54d0" />


### 🌙 Dark Mode
<img width="1320" height="1002" alt="after edit profil" src="https://github.com/user-attachments/assets/bb2b4678-930c-45b4-88a7-a502025ca5ca" />


</div>

> Simpan screenshot aplikasi ke dalam folder `docs` dengan nama file sesuai gambar di atas. Sesuaikan nama file jika berbeda.

---

## ✨ Fitur Utama

| No. | Fitur | Deskripsi |
|---|---|---|
| 01 | 🔐 Login Page | Halaman awal untuk masuk ke aplikasi. |
| 02 | 👤 Dynamic Profile | Menampilkan foto, nama, NIM, program studi, kelas, bio, dan informasi kontak. |
| 03 | ✏️ Edit Profile | Mengubah informasi profil melalui halaman pengeditan. |
| 04 | 🖼️ Change Profile Photo | Mengganti foto profil menggunakan Image Picker. |
| 05 | ℹ️ About Me | Menampilkan informasi diri, Skills, Hobi, dan Riwayat Pendidikan. |
| 06 | 🧭 Navigation | Navigasi halaman menggunakan AppBar, Drawer, dan Navigator. |
| 07 | 🔔 IconButton | Tombol notifikasi pada bagian AppBar. |
| 08 | 👍 FloatingActionButton | Tombol interaktif yang menampilkan pesan menggunakan SnackBar. |
| 09 | 🌙 Dark & Light Mode | Mendukung tema terang dan gelap mengikuti pengaturan perangkat. |

### 🔍 Detail Implementasi

**1. Halaman Profil**

- Menggunakan `CircleAvatar` untuk menampilkan foto profil.
- Menggunakan `Text` untuk menampilkan informasi pengguna.
- Menggunakan `Card` dan `ListTile` untuk menyusun informasi.
- Menampilkan data pribadi dan informasi kontak.

**2. Edit Profil**

- Menggunakan `StatefulWidget` untuk mengelola perubahan data.
- Menggunakan `TextEditingController` untuk mengelola input.
- Menggunakan `Navigator.push()` untuk membuka halaman edit.
- Menggunakan `setState()` untuk memperbarui tampilan profil setelah data berubah.

**3. Penggantian Foto Profil**

- Menggunakan package `image_picker`.
- Mengambil gambar dari galeri perangkat.
- Menyimpan gambar dalam bentuk data bytes.
- Menampilkan foto menggunakan `MemoryImage`.

**4. About Me**

- Menampilkan deskripsi diri.
- Menampilkan Skills atau kemampuan.
- Menampilkan Hobi dan Minat.
- Menampilkan Riwayat Pendidikan.

**5. Navigasi Aplikasi**

- Menggunakan `Scaffold` sebagai struktur dasar halaman.
- Menggunakan `AppBar` sebagai bagian atas aplikasi.
- Menggunakan `Drawer` sebagai menu navigasi.
- Menggunakan `Navigator.push()` untuk berpindah halaman.

**6. Dark & Light Mode**

- Menggunakan `ThemeData` untuk mengatur tema aplikasi.
- Menggunakan `ColorScheme.fromSeed()` untuk menentukan skema warna.
- Menggunakan `darkTheme` untuk tampilan gelap.
- Menggunakan `themeMode: ThemeMode.system` agar mengikuti tema perangkat.

**7. Interaksi Pengguna**

- Menggunakan `IconButton` untuk tombol notifikasi.
- Menggunakan `FloatingActionButton` untuk tombol aksi.
- Menggunakan `SnackBar` untuk menampilkan pesan kepada pengguna.

---

## 🛠️ Teknologi yang Digunakan

<div align="center">

<img src="https://skillicons.dev/icons?i=flutter,dart,androidstudio,vscode,git,github" alt="Technology Stack"/>

</div>

| Teknologi | Fungsi |
|---|---|
| Flutter | Framework pengembangan aplikasi mobile. |
| Dart | Bahasa pemrograman aplikasi. |
| Material Design | Komponen dan desain antarmuka. |
| Image Picker | Mengambil gambar dari galeri perangkat. |
| Visual Studio Code | Editor untuk menulis kode program. |
| Git | Version control untuk mengelola perubahan kode. |
| GitHub | Platform penyimpanan repository project. |

---

## 📂 Struktur Folder Project

```text
lib/
│
├── main.dart
│
├── models/
│   └── profile.dart
│
└── screens/
    ├── login_page.dart
    ├── profile_page.dart
    ├── edit_profil_page.dart
    └── about_me_page.dart
```

**Penjelasan:**

- `main.dart` : Titik awal untuk menjalankan aplikasi dan mengatur konfigurasi tema.
- `models/profile.dart` : Menyimpan struktur data profil pengguna.
- `screens/login_page.dart` : Halaman awal aplikasi.
- `screens/profile_page.dart` : Halaman utama yang menampilkan informasi profil.
- `screens/edit_profil_page.dart` : Halaman untuk mengubah informasi profil dan foto.
- `screens/about_me_page.dart` : Halaman informasi tambahan mengenai pengguna.

---

## 🚀 Cara Menjalankan Proyek

### 1. Clone Repository

```bash
git clone https://github.com/Santiko1908/uts_profile_soal1.git
```

### 2. Masuk ke Folder Project

```bash
cd soal2-profil-app
```

### 3. Bersihkan Cache Project

```bash
flutter clean
```

### 4. Install Dependencies

```bash
flutter pub get
```

### 5. Jalankan Aplikasi

```bash
flutter run
```

**Catatan:** Pastikan Flutter SDK sudah terinstal dan emulator atau perangkat Android sudah terhubung dengan komputer.

---

## 📱 Download APK

<div align="center">

<img src="https://img.shields.io/badge/Android-APK_Download-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android APK"/>

<br/><br/>

### Ingin mencoba aplikasi secara langsung?

**File APK akan tersedia melalui GitHub Releases setelah proses build dan upload selesai.**

</div>

---

<div align="center">

### 💙 Thank You for Visiting!

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=16&duration=3000&pause=1000&color=00BFFF&center=true&vCenter=true&width=500&lines=Keep+Learning+%F0%9F%9A%80;Keep+Building+%F0%9F%92%BB;Keep+Growing+%E2%9C%A8" alt="Footer Animation"/>

**Developed by Angger Santiko**

© 2026 — Flutter Student Profile Application

</div>
