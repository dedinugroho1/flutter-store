# 🏪 Flutter Store — Roadmap & Learning Flow

> **Project**: flutter-store
> **Use Case**: Manage products, customers, and orders in one place
> **Tech**: Flutter Web + DummyJSON API
> **Created**: 2026-06-10

---

## 📋 Overview

Project ini adalah web app dashboard untuk mengelola:
- **Products** — CRUD produk (nama, harga, gambar, kategori)
- **Customers** — Daftar & detail pelanggan
- **Orders** — Manage pesanan, status, dan tracking

---

## 🗺️ Full Roadmap (Step by Step)

### Phase 1: Project Setup ⚙️
> Fondasi project Flutter Web

| Step | Task | Status |
|------|------|--------|
| 1.1 | Install Flutter & pastikan `flutter doctor` clean | ✅ |
| 1.2 | Buat project Flutter baru (`flutter create`) | ✅ |
| 1.3 | Enable Flutter Web support | ✅ |
| 1.4 | Setup folder structure (feature-based) | ✅ |
| 1.5 | Install dependencies awal (go_router, dll) | ✅ |
| 1.6 | Run pertama kali di browser (`flutter run -d chrome`) | ✅ |

---

### Phase 2: Design System & Layout 🎨
> Bangun fondasi UI yang reusable

| Step | Task | Status |
|------|------|--------|
| 2.1 | Buat theme (warna, typography, spacing) | ✅ |
| 2.2 | Buat AppShell/Layout (sidebar + content area) | ✅ |
| 2.3 | Buat sidebar navigation | ✅ |
| 2.4 | Buat top bar / app bar | ✅ |
| 2.5 | Setup routing dengan go_router | ✅ |
| 2.6 | Responsive layout (desktop, tablet, mobile) | ⬜ |

---

### Phase 3: Dashboard Page 📊
> Halaman utama setelah login

| Step | Task | Status |
|------|------|--------|
| 3.1 | Buat stat cards (total products, customers, orders) | ⬜ |
| 3.2 | Buat recent orders table | ⬜ |
| 3.3 | Buat top products widget | ⬜ |
| 3.4 | Layout dashboard responsive | ⬜ |

---

### Phase 4: Products Feature 📦
> CRUD Products dengan UI lengkap

| Step | Task | Status |
|------|------|--------|
| 4.1 | Buat product list page (grid/table view) | ⬜ |
| 4.2 | Buat product card widget | ⬜ |
| 4.3 | Buat product detail page | ⬜ |
| 4.4 | Buat add/edit product form | ⬜ |
| 4.5 | Buat search & filter product | ⬜ |
| 4.6 | Buat pagination | ⬜ |

---

### Phase 5: Customers Feature 👥
> Manage data pelanggan

| Step | Task | Status |
|------|------|--------|
| 5.1 | Buat customers list page (data table) | ⬜ |
| 5.2 | Buat customer detail page | ⬜ |
| 5.3 | Buat search & filter customer | ⬜ |
| 5.4 | Buat customer orders history | ⬜ |

---

### Phase 6: Orders Feature 🛒
> Manage pesanan

| Step | Task | Status |
|------|------|--------|
| 6.1 | Buat orders list page (data table + status badge) | ⬜ |
| 6.2 | Buat order detail page | ⬜ |
| 6.3 | Buat order status update | ⬜ |
| 6.4 | Buat filter by status, date range | ⬜ |

---

### Phase 7: API Integration (DummyJSON) 🔌
> Ganti dummy data dengan API

| Step | Task | Status |
|------|------|--------|
| 7.1 | Setup HTTP client (dio/http package) | ⬜ |
| 7.2 | Buat model classes dari JSON | ⬜ |
| 7.3 | Buat repository layer | ⬜ |
| 7.4 | Integrasikan API ke Products | ⬜ |
| 7.5 | Integrasikan API ke Customers (Users) | ⬜ |
| 7.6 | Integrasikan API ke Orders (Carts) | ⬜ |
| 7.7 | Error handling & loading states | ⬜ |

---

### Phase 8: State Management 🧠
> Manage state secara proper

| Step | Task | Status |
|------|------|--------|
| 8.1 | Pilih state management (Provider/Riverpod/Bloc) | ⬜ |
| 8.2 | Implement state management untuk Products | ⬜ |
| 8.3 | Implement state management untuk Customers | ⬜ |
| 8.4 | Implement state management untuk Orders | ⬜ |

---

### Phase 9: Polish & Enhancement ✨
> Finishing touch

| Step | Task | Status |
|------|------|--------|
| 9.1 | Dark/Light mode toggle | ⬜ |
| 9.2 | Animasi & transitions | ⬜ |
| 9.3 | Empty states & error states UI | ⬜ |
| 9.4 | Loading skeletons | ⬜ |
| 9.5 | Snackbar notifications | ⬜ |

---

### Phase 10: Build & Deploy 🚀
> Deploy ke production

| Step | Task | Status |
|------|------|--------|
| 10.1 | Flutter build web | ⬜ |
| 10.2 | Deploy ke Firebase Hosting / Vercel / Netlify | ⬜ |
| 10.3 | Setup custom domain (optional) | ⬜ |

---

## 📁 Target Folder Structure

```
flutter-store/
├── docs/                          # Dokumentasi project
│   ├── roadmap.md                 # File ini
│   └── catatan_belajar.md         # Catatan per step
├── lib/
│   ├── main.dart                  # Entry point
│   ├── app.dart                   # MaterialApp + Router
│   ├── core/
│   │   ├── theme/                 # AppTheme, colors, typography
│   │   ├── router/                # GoRouter config
│   │   ├── constants/             # App constants
│   │   └── widgets/               # Shared/reusable widgets
│   ├── features/
│   │   ├── dashboard/
│   │   │   └── presentation/      # Dashboard pages & widgets
│   │   ├── products/
│   │   │   ├── data/              # Models, repositories
│   │   │   └── presentation/      # Pages, widgets
│   │   ├── customers/
│   │   │   ├── data/
│   │   │   └── presentation/
│   │   └── orders/
│   │       ├── data/
│   │       └── presentation/
│   └── shared/
│       ├── models/                # Shared models
│       └── services/              # API service, etc.
├── web/                           # Flutter web files (auto-generated)
├── pubspec.yaml                   # Dependencies
└── README.md
```

---

## 📦 Dependencies yang Akan Dipakai

| Package | Kegunaan | Phase |
|---------|----------|-------|
| `go_router` | Navigation/routing | Phase 2 |
| `google_fonts` | Custom typography | Phase 2 |
| `dio` atau `http` | HTTP client untuk API | Phase 7 |
| `provider` / `riverpod` | State management | Phase 8 |
| `intl` | Date & currency formatting | Phase 3 |
| `shimmer` | Loading skeleton | Phase 9 |
| `fl_chart` | Charts di dashboard | Phase 3 |

---

## 🔗 DummyJSON API Endpoints (untuk nanti)

| Endpoint | Kegunaan |
|----------|----------|
| `GET /products` | List semua products |
| `GET /products/{id}` | Detail product |
| `GET /products/search?q=` | Search products |
| `GET /products/categories` | List categories |
| `GET /users` | List customers |
| `GET /users/{id}` | Detail customer |
| `GET /carts` | List orders/carts |
| `GET /carts/{id}` | Detail order |

> Base URL: `https://dummyjson.com`

---

## ✅ Current Progress

**Sekarang di**: Phase 1 — Step 1.1
**Next action**: Jalankan `flutter doctor` untuk cek environment
