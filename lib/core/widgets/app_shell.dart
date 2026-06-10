import 'package:flutter/material.dart';
import 'sidebar.dart';

class AppShell extends StatelessWidget {
  // navigationShell ini didapat dari go_router (konten halamannya)
  final Widget navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // KIRI: Sidebar Navigation
          const Sidebar(),

          // KANAN: Konten Utama yang dinamis berubah-ubah
          Expanded(
            child: Column(
              children: [
                // (Nanti kita bisa tambahkan TopBar/Header di sini jika mau)

                // Area Konten
                Expanded(
                  child: navigationShell,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
