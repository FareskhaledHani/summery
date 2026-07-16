import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../errors/error_handler/error_handler.dart';
import '../../errors/failures.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/sizes.dart';
import '../main_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.failure,
    this.retry,
    this.expandAvailableSpace = false,
    this.showTryAgain = true,
  });

  final Failure? failure;
  final Function()? retry;
  final bool expandAvailableSpace;
  final bool showTryAgain;

  Future<void> _refresh() async {
    if (retry != null) {
      retry!();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (expandAvailableSpace) {
      return Expanded(
        child: _body(),
      );
    }
    return _body();
  }

  _body() {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.s20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                errorHandler(failure),
                style: AppTextStyles.style16W400,
              ),
            ),
            if (showTryAgain) ...[
              const Gap(Sizes.s10),
              MainButton(
                label: AppStrings.retry.tr(),
                onPressed: _refresh,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
