# 🎨 Phase 2: Design System & Layout

> Fokus: Membuat fondasi UI yang reusable (Tema, Warna, Font) dan Layout utama (Sidebar & Topbar) sebelum masuk ke halaman fungsional.

---

## 🎯 Target Phase 2

1. **Theme**: Setup warna utama (primary, secondary, background) dan font.
2. **AppShell**: Bikin layout kerangka dasar yang punya Sidebar di kiri dan konten utama di kanan.
3. **Routing**: Setup `go_router` untuk pindah antar halaman (Dashboard, Products, dll).
4. **Responsive**: Pastikan layout aman saat layar dikecilkan (Sidebar bisa sembunyi).

---

## 🪜 Step by Step

### Step 2.1 — Setup Theme & Colors
Kita buat file untuk nyimpan semua warna dan settingan font, agar seragam se-aplikasi.
- **File target**: `lib/core/theme/app_theme.dart` & `lib/core/theme/app_colors.dart`

### Step 2.2 — Setup Routing Dasar (go_router)
Kita perlu buat file routing agar URL di browser bisa berubah (contoh: `localhost/dashboard`, `localhost/products`).
- **File target**: `lib/core/router/app_router.dart`

### Step 2.3 — Buat AppShell (Kerangka Web)
AppShell adalah struktur kerangka yang akan ngebungkus semua halaman. Isinya adalah Sidebar navigation dan area konten.
- **File target**: `lib/core/widgets/app_shell.dart`
- **File target**: `lib/core/widgets/sidebar.dart`

### Step 2.4 — Hubungkan Theme, Router & AppShell
Ini tahap untuk memasukkan Theme dan Router yang sudah kita buat ke dalam file utama aplikasi.
- **File target**: `lib/main.dart` & `lib/app.dart`

---

## 🚀 Let's Go!

Ikuti arahan dari asisten untuk eksekusi kode step by step!
