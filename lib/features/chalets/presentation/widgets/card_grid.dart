import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_summer/core/utils/sizes.dart';
import 'package:my_summer/features/chalets/presentation/widgets/chalets_card.dart';


class ChetlesCardsGrid extends StatelessWidget {
  const ChetlesCardsGrid({super.key, required this.items});

  final List<CardItemData> items;

  static const double _cardMinWidth = 220;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        int crossAxisCount = (width / _cardMinWidth).floor();
        if (crossAxisCount < 1) crossAxisCount = 1;
        if (crossAxisCount > 6) crossAxisCount = 6; 

        return GridView.builder(
          padding: EdgeInsets.all(Sizes.s16.w),
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: Sizes.s16.w,
            mainAxisSpacing: Sizes.s16.h,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InfoCard(
              image: item.image,
              title: item.title,
              subtitle: item.subtitle,
              onTap: item.onTap,
            );
          },
        );
      },
    );
  }
}

class CardItemData {
  const CardItemData({
    required this.title,
    required this.subtitle,
    this.image,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final String? image;
  final VoidCallback? onTap;
}