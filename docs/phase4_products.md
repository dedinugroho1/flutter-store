# 📦 Phase 4: Products Feature

> Fokus: Membangun halaman daftar produk, detail produk, dan form tambah/edit produk.

---

## 🎯 Target Phase 4

1. **Products Page**: Menampilkan daftar semua produk toko.
2. **Product Card**: Widget kartu untuk menampilkan gambar, harga, dan nama produk satuan.
3. **Product Detail**: Halaman khusus saat produk diklik (menampilkan deskripsi lengkap).
4. **Form Produk**: Modal/Halaman untuk menambah atau mengedit produk.

---

## 🪜 Step by Step

### Step 4.1 — Buat Halaman Daftar Produk (Products Page)
Kita akan membuat struktur halaman `ProductsPage` yang berisi tombol "Add Product" di pojok kanan atas dan daftar *grid* produk di bawahnya.
- **File target**: `lib/features/products/presentation/products_page.dart`

### Step 4.2 — Buat Desain Kartu Produk (Product Card)
Komponen kotak untuk menampilkan foto, judul, kategori, dan harga produk.
- **File target**: `lib/features/products/presentation/widgets/product_card.dart`

### Step 4.3 — Hubungkan Products Page ke Router
Kita pastikan tombol "Products" di sidebar kiri saat diklik bisa mengarah ke halaman yang baru ini.
- **File target**: `lib/core/router/app_router.dart`

*(Nanti kita akan lanjut ke Step 4.4 untuk form tambah produk setelah daftar produk ini selesai)*
