import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil URL saat ini untuk highlight menu yang aktif
    final String location = GoRouterState.of(context).uri.path;

    return Container(
      width: 250, // Lebar sidebar
      color: AppColors.sidebarBackground,
      child: Column(
        children: [
          // Bagian Header/Logo Sidebar
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Icon(Icons.storefront, color: AppColors.primaryLight, size: 32),
                SizedBox(width: 12),
                Text(
                  'Flutter Store',
                  style: TextStyle(
                    color: AppColors.textLight,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          
          // Menu Dashboard
          _buildMenuItem(
            context: context,
            title: 'Dashboard',
            icon: Icons.dashboard_rounded,
            route: '/',
            isActive: location == '/',
          ),
          
          // Menu Products
          _buildMenuItem(
            context: context,
            title: 'Products',
            icon: Icons.inventory_2_rounded,
            route: '/products',
            isActive: location.startsWith('/products'),
          ),

          // Nanti kita tambah Customers dan Orders di sini...
        ],
      ),
    );
  }

  // Fungsi helper (bantuan) untuk membuat desain tombol menu
  Widget _buildMenuItem({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String route,
    required bool isActive,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: InkWell(
        onTap: () => context.go(route), // Pindah halaman saat di-klik
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary.withOpacity(0.15) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isActive ? AppColors.primaryLight : AppColors.textSecondary,
                size: 22,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  color: isActive ? AppColors.primaryLight : AppColors.textSecondary,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
