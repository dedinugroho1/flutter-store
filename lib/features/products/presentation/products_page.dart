import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'widgets/product_card.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Header (Judul & Tombol Add)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Kelola semua produk jualanmu di sini.',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Nanti kita buat fungsi tambah produk di sini
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add Product'),
                ),
              ],
            ),
            
            const SizedBox(height: 32),

            // Daftar Grid Produk (bisa digulir)
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Hitung jumlah kolom responsif
                  int crossAxisCount = constraints.maxWidth > 1200 ? 5 : (constraints.maxWidth > 800 ? 3 : 2);
                  
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 24,
                      childAspectRatio: 0.75, // Kotaknya lebih tinggi dari lebarnya
                    ),
                    itemCount: 8, // Kita pakai 8 produk dummy dulu
                    itemBuilder: (context, index) {
                      return ProductCard(
                        imageUrl: 'https://picsum.photos/seed/${index + 1}/300/200',
                        title: 'Produk Dummy Keren Ke-${index + 1}',
                        category: 'ELECTRONICS',
                        price: '\$${(10 + index * 15)}.99',
                        stock: index == 2 ? 4 : 45, // sengaja ada yg stoknya tinggal 4 (merah)
                      );
                    },
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
