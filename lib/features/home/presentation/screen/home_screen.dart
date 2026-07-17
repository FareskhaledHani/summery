import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/config/routes/app_navigator.dart';
import 'package:my_summer/config/routes/app_routes.dart';

import 'package:my_summer/core/utils/utils.dart';
import 'package:my_summer/core/widgets/main_button.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.smart2),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 420.w,
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s32.w,
              vertical: Sizes.s40.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.95),
              borderRadius: BorderRadius.circular(Sizes.s20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'صيفي',
                  style: AppTextStyles.style14W500.copyWith(
                    fontSize: Sizes.s32.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                Gap(Sizes.s32.h),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: Sizes.s52.h,
                        child: MainButton(
                          label: AppStrings.chalets.tr(),
                          onPressed: () {
                            AppNavigator.navigateNamedTo(AppRoutes.chaletsScreen);
                          },
                        ),
                      ),
                    ),
                    Gap(Sizes.s16.w),
                    Expanded(
                      child: SizedBox(
                        height: Sizes.s52.h,
                        child: MainButton(
                          label: AppStrings.expenses.tr(),
                          onPressed: () {
                            AppNavigator.navigateNamedTo(AppRoutes.expesnsesScreen);
                          },
                          backgroundColor: AppColors.white,
                          textColor: AppColors.primary,
                          borderColor: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}