import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Key ini berguna kalau kita butuh navigasi tanpa context nanti
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

// Ini adalah konfigurasi utama router kita
final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/', // Halaman pertama yang dibuka
  routes: [
    GoRoute(
      path: '/',
      name: 'dashboard',
      // Untuk sementara, kita tampilkan teks biasa dulu sebagai placeholder
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Halaman Dashboard (Sedang Dibuat...)'),
        ),
      ),
    ),
    GoRoute(
      path: '/products',
      name: 'products',
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Halaman Products (Sedang Dibuat...)'),
        ),
      ),
    ),
  ],
);
