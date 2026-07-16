import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/config/routes/app_navigator.dart';
import 'package:my_summer/config/routes/app_routes.dart';
import 'package:my_summer/core/utils/app_colors.dart';
import 'package:my_summer/core/utils/app_strings.dart';
import 'package:my_summer/core/utils/app_text_styles.dart';
import 'package:my_summer/core/utils/sizes.dart';
import 'package:my_summer/core/widgets/main_button.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'صيفي',
                style: AppTextStyles.style14W500.copyWith(
                  fontSize: Sizes.s28.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              Gap(Sizes.s24.h),
              Row(
                children: [
                  Expanded(
                    child: MainButton(
                      label: AppStrings.chalets.tr(),
                      onPressed: () {
                        AppNavigator.navigateNamedTo( AppRoutes.chaletsScreen);
                      },
                    ),
                  ),
                  Gap(Sizes.s16.w),
                  Expanded(
                    child: MainButton(
                      label: AppStrings.expenses.tr(),
                      onPressed: () {
                                                AppNavigator.navigateNamedTo( AppRoutes.expesnsesScreen);

                      },
                      backgroundColor: AppColors.white,
                      textColor: AppColors.primary,
                      borderColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}