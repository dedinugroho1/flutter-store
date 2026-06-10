import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class RecentOrdersTable extends StatelessWidget {
  const RecentOrdersTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Orders',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            
            // Dibungkus scroll horizontal agar kalau layar sempit, tabelnya bisa digeser (tidak error)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                // Menentukan minimal lebar tabel adalah sepanjang layarnya
                constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width * 0.6),
                child: DataTable(
                  headingTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textSecondary,
                  ),
                  dataRowMinHeight: 60,
                  dataRowMaxHeight: 60,
                  columns: const [
                    DataColumn(label: Text('Order ID')),
                    DataColumn(label: Text('Customer')),
                    DataColumn(label: Text('Date')),
                    DataColumn(label: Text('Amount')),
                    DataColumn(label: Text('Status')),
                  ],
                  rows: [
                    _buildRow('#ORD-001', 'John Doe', '10 Jun 2026', '\$120.50', 'Completed', AppColors.success),
                    _buildRow('#ORD-002', 'Jane Smith', '09 Jun 2026', '\$45.00', 'Processing', AppColors.warning),
                    _buildRow('#ORD-003', 'Michael Johnson', '09 Jun 2026', '\$210.00', 'Completed', AppColors.success),
                    _buildRow('#ORD-004', 'Emily Davis', '08 Jun 2026', '\$85.00', 'Cancelled', AppColors.error),
                    _buildRow('#ORD-005', 'William Brown', '08 Jun 2026', '\$15.99', 'Completed', AppColors.success),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi bantuan untuk membuat baris (row) tabel dengan rapi
  DataRow _buildRow(String id, String customer, String date, String amount, String status, Color statusColor) {
    return DataRow(
      cells: [
        DataCell(Text(id, style: const TextStyle(fontWeight: FontWeight.w600))),
        DataCell(Text(customer)),
        DataCell(Text(date)),
        DataCell(Text(amount, style: const TextStyle(fontWeight: FontWeight.w600))),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: statusColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
