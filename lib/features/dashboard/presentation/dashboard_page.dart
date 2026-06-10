import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'widgets/stat_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Dashboard Overview',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Selamat datang kembali! Berikut ringkasan tokomu hari ini.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 32),

            // Kumpulan Kotak Statistik (Stat Cards) pakai GridView
            // Supaya ukurannya otomatis menyesuaikan lebar layar
            LayoutBuilder(
              builder: (context, constraints) {
                // Jika layarnya sempit (mobile/tablet), kolomnya dikurangi
                int crossAxisCount = constraints.maxWidth > 1200 ? 4 : (constraints.maxWidth > 800 ? 2 : 1);
                
                return GridView.count(
                  crossAxisCount: crossAxisCount,
                  shrinkWrap: true, // Wajib agar tidak error di dalam SingleChildScrollView
                  physics: const NeverScrollableScrollPhysics(), // Scroll mengikuti induknya
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 2.2, // Mengatur rasio lebar:tinggi card
                  children: const [
                    StatCard(
                      title: 'Total Revenue',
                      value: '\$45,231.89',
                      icon: Icons.attach_money_rounded,
                      iconColor: AppColors.success,
                      trend: '+20.1%',
                      isTrendUp: true,
                    ),
                    StatCard(
                      title: 'Orders',
                      value: '+2,350',
                      icon: Icons.shopping_cart_outlined,
                      iconColor: AppColors.primary,
                      trend: '+15.2%',
                      isTrendUp: true,
                    ),
                    StatCard(
                      title: 'Active Customers',
                      value: '+1,203',
                      icon: Icons.people_outline_rounded,
                      iconColor: AppColors.info,
                      trend: '-4.5%',
                      isTrendUp: false,
                    ),
                    StatCard(
                      title: 'Total Products',
                      value: '142',
                      icon: Icons.inventory_2_outlined,
                      iconColor: AppColors.warning,
                      trend: '+2',
                      isTrendUp: true,
                    ),
                  ],
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
