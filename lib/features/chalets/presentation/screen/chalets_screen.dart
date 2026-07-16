import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:my_summer/core/utils/app_colors.dart';
import 'package:my_summer/core/utils/app_text_styles.dart';
import 'package:my_summer/core/utils/sizes.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';
import 'package:my_summer/features/chalets/presentation/cubit/list_cubit/chalets_list_cubit.dart';
import 'package:my_summer/features/chalets/presentation/cubit/list_cubit/chalets_list_state.dart';
import 'package:my_summer/features/chalets/presentation/widgets/add_chalet_sheet.dart';
import 'package:my_summer/features/chalets/presentation/widgets/app_bar.dart';
import 'package:my_summer/features/chalets/presentation/widgets/card_grid.dart';
import 'package:my_summer/features/details_chalet/presentaion/chalet_details.dart';

class ChaletsScreen extends StatelessWidget {
  const ChaletsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<ChaletsListCubit>()..loadChalets(),
      child: const _ChaletsView(),
    );
  }
}

class _ChaletsView extends StatelessWidget {
  const _ChaletsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashboardAppBar(
        onTapDashBoardIcon: null,
        title: "Dashboard",
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openAddChaletSheet(context),
        icon: const Icon(Icons.add),
        label: const Text('شاليه جديد'),
      ),
      body: BlocBuilder<ChaletsListCubit, ChaletsListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (chalets, totalPaidAcrossAll) {
              if (chalets.isEmpty) {
                return const Center(child: Text('لا يوجد شاليهات بعد'));
              }

              final items = chalets
                  .map(
                    (chalet) => CardItemData(
                      title: chalet.name,
                      subtitle: chalet.subtitle ?? '',
                      onTap: () => _openChaletDetails(context, chalet),
                    ),
                  )
                  .toList();

              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(Sizes.s16.w),
                    child: _buildTotalCard(totalPaidAcrossAll),
                  ),
                  Expanded(child: ChetlesCardsGrid(items: items)),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTotalCard(double total) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Sizes.s16.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(Sizes.s12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'إجمالي المدفوع لكل الشاليهات',
            style: AppTextStyles.style14W500,
          ),
          Text(
            '${total.toStringAsFixed(0)} ج.م',
            style: AppTextStyles.style14W500.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  void _openAddChaletSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<ChaletsListCubit>(),
        child: const AddChaletSheet(),
      ),
    );
  }

  void _openChaletDetails(BuildContext context, ChaletEntity chalet) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChaletDetailsScreen(chalet: chalet),
      ),
    );
     context.read<ChaletsListCubit>().loadChalets(); 
  }
}