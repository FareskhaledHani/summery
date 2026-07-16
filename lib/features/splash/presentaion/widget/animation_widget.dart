import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_summer/core/utils/app_colors.dart';
import 'package:my_summer/core/utils/app_text_styles.dart';
import 'package:my_summer/core/utils/sizes.dart';

class AnimatedSayfyTitle extends StatefulWidget {
  const AnimatedSayfyTitle({super.key});

  @override
  State<AnimatedSayfyTitle> createState() => _AnimatedSayfyTitleState();
}

class _AnimatedSayfyTitleState extends State<AnimatedSayfyTitle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  static const String _text = 'صيفي';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400 + (_text.length * 150)),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(_text.length, (index) {
        final start = index / _text.length;
        final end = start + (1 / _text.length);

        final animation = CurvedAnimation(
          parent: _controller,
          curve: Interval(start, end, curve: Curves.easeOutBack),
        );

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Opacity(
              opacity: animation.value.clamp(0.0, 1.0),
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - animation.value)),
                child: child,
              ),
            );
          },
          child: Text(
            _text[index],
            style: AppTextStyles.style14W500.copyWith(
              fontSize: Sizes.s28.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
        );
      }),
    );
  }
}