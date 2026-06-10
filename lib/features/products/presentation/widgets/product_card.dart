import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final String price;
  final int stock;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Supaya gambar ujungnya melengkung ikut border kotak
      child: InkWell(
        onTap: () {
          // Nanti kalau di klik akan membuka halaman detail produk
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Foto Produk
            AspectRatio(
              aspectRatio: 16 / 12,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.border,
                  child: const Icon(Icons.image_not_supported, color: AppColors.textSecondary),
                ),
              ),
            ),
            
            // Bagian Text & Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          'Stock: $stock',
                          style: TextStyle(
                            fontSize: 12,
                            color: stock > 10 ? AppColors.textSecondary : AppColors.error,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
