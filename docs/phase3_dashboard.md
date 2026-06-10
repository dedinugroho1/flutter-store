# 📊 Phase 3: Dashboard Page

> Fokus: Membangun halaman utama (Dashboard) yang berisi ringkasan data seperti Total Produk, Total Pelanggan, dan Tabel Pesanan Terbaru.

---

## 🎯 Target Phase 3

1. **Dashboard Page**: Membuat halaman utamanya.
2. **Stat Cards**: Membuat widget kotak ringkasan angka di bagian atas (Total Revenue, Total Orders, dll).
3. **Recent Orders Table**: Menampilkan tabel data dummy untuk pesanan terakhir masuk.
4. **Top Products**: Menampilkan daftar produk terlaris.

---

## 🪜 Step by Step

### Step 3.1 — Buat File Dashboard Dasar
Kita akan ganti teks *placeholder* di tengah layar dengan halaman Dashboard sungguhan.
- **File target**: `lib/features/dashboard/presentation/dashboard_page.dart`

### Step 3.2 — Buat Widget StatCard (Angka Ringkasan)
Membuat desain kotak/kartu untuk menampilkan angka cantik di bagian paling atas.
- **File target**: `lib/features/dashboard/presentation/widgets/stat_card.dart`

### Step 3.3 — Buat Widget Tabel Recent Orders
Menyiapkan desain tabel.
- **File target**: `lib/features/dashboard/presentation/widgets/recent_orders_table.dart`

### Step 3.4 — Hubungkan ke Router
Mengubah `app_router.dart` agar rute `/` memanggil `DashboardPage()` yang baru.
