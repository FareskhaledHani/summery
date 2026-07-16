import 'package:flutter/material.dart';

import '../../domain/entity/history_entity.dart';

class TreasuryHistoryList extends StatelessWidget {
  const TreasuryHistoryList({super.key, required this.items});

  final List<TreasuryHistoryItem> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(child: Text('لا توجد حركات بعد')),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: (item.isPositive ? Colors.green : Colors.red).withOpacity(0.15),
            child: Icon(
              item.isPositive ? Icons.arrow_downward : Icons.arrow_upward,
              color: item.isPositive ? Colors.green : Colors.red,
            ),
          ),
          title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(item.date.toLocal().toString().split(' ').first),
          trailing: Text(
            '${item.isPositive ? '+' : ''}${item.amount.toStringAsFixed(0)} ج.م',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: item.isPositive ? Colors.green : Colors.red,
            ),
          ),
        );
      },
    );
  }
}