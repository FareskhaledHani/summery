import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/core/utils/app_colors.dart';
import 'package:my_summer/core/utils/app_text_styles.dart';
import 'package:my_summer/core/utils/sizes.dart';
import 'package:my_summer/core/widgets/svg_image.dart';


class InfoCard extends StatefulWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.image,
    this.imageWidget,
    this.onTap,
    this.width,
  });

  final String title;
  final String subtitle;
  final String? image;
  final Widget? imageWidget;
  final VoidCallback? onTap;
  final double? width;

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        scale: _hovered ? 1.03 : 1,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(
            0,
            _hovered ? -8 : 0,
            0,
          ),
          width: widget.width,
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.s16.w,
            vertical: Sizes.s20.h,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(Sizes.s16),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(
                  alpha: _hovered ? 0.15 : 0.06,
                ),
                blurRadius: _hovered ? 24 : 12,
                offset: Offset(0, _hovered ? 10 : 4),
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(Sizes.s16),
            onTap: widget.onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.imageWidget ??
                    (widget.image != null
                        ? SvgImage(
                            widget.image!,
                            height: Sizes.s64.h,
                            width: Sizes.s64.w,
                          )
                        : const SizedBox.shrink()),
                Gap(Sizes.s16.h),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.style14W500.copyWith(
                    fontSize: Sizes.s16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                Gap(Sizes.s8.h),
                Text(
                  widget.subtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.style14W400.copyWith(
                    fontSize: Sizes.s13.sp,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}