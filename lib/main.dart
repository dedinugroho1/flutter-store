import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // Import ini
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';

void main() {
  usePathUrlStrategy(); // Tambahkan baris ini untuk menghilangkan #
  runApp(const FlutterStoreApp());
}

class FlutterStoreApp extends StatelessWidget {
  const FlutterStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Store',
      debugShowCheckedModeBanner: false,
      
      // Memasang Tema yang tadi kita buat
      theme: AppTheme.lightTheme,
      
      // Memasang Router navigasi
      routerConfig: appRouter,
    );
  }
}
