import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/app_shell.dart';
import '../../features/dashboard/presentation/dashboard_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    // ShellRoute adalah pembungkus (AppShell)
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppShell(navigationShell: child);
      },
      routes: [
        // Anak-anak dari ShellRoute (halaman-halaman di sebelah kanan)
        GoRoute(
          path: '/',
          name: 'dashboard',
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: '/products',
          name: 'products',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('Halaman Products', style: TextStyle(fontSize: 24))),
          ),
        ),
      ],
    ),
  ],
);
