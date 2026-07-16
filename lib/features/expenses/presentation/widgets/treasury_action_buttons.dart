import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/main_button.dart';
import '../cubit/treasury_cubit.dart';
import 'add_transaction_sheet.dart';

class TreasuryActionButtons extends StatelessWidget {
  const TreasuryActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TreasuryCubit>();

    return Row(
      children: [
        Expanded(
          child: MainButton(
            label: 'إضافة مصروف',
            backgroundColor: Colors.red,
            onPressed: () => _openSheet(context, cubit, isExpense: true),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: MainButton(
            label: 'إضافة رصيد',
            backgroundColor: Colors.green,
            onPressed: () => _openSheet(context, cubit, isExpense: false),
          ),
        ),
      ],
    );
  }

  void _openSheet(BuildContext context, TreasuryCubit cubit, {required bool isExpense}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => BlocProvider.value(
        value: cubit,
        child: AddTransactionSheet(isExpense: isExpense),
      ),
    );
  }
}