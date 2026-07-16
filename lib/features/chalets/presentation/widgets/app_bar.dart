import 'package:flutter/material.dart';
import 'package:my_summer/core/utils/app_colors.dart';

class DashboardAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
    required this.title, 
    this.onTapDashBoardIcon,
  });
 final VoidCallback? onTapDashBoardIcon;
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 72,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          height: 1,
          color: AppColors.lightGray16,
        ),
      ),
      titleSpacing: 24,
      title: Row(
        children: [
          InkWell(
            onTap: onTapDashBoardIcon,
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: .1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.dashboard_customize_rounded,
                color: AppColors.primary,
              ),
            ),
          ),

          const SizedBox(width: 14),

          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),

          const Spacer(),

          SizedBox(
            width: 320,
            height: 44,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: AppColors.cardBackground,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 20),

          IconButton(
            onPressed: () {},
            icon: Badge(
              child: Icon(
                Icons.notifications_none_rounded,
                color: AppColors.secondary,
              ),
            ),
          ),

          const SizedBox(width: 10),

          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Text(
                "F",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}