import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/main_button.dart';
import '../cubit/treasury_cubit.dart';
import '../cubit/treasury_state.dart';

class AddTransactionSheet extends StatefulWidget {
  const AddTransactionSheet({super.key, required this.isExpense});

  final bool isExpense;

  @override
  State<AddTransactionSheet> createState() => _AddTransactionSheetState();
}

class _AddTransactionSheetState extends State<AddTransactionSheet> {
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submit() {
    final amount = double.tryParse(_amountController.text) ?? 0;
    if (amount <= 0) return;

    final cubit = context.read<TreasuryCubit>();
    if (widget.isExpense) {
      cubit.addExpense(
        amount: amount,
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
      );
    } else {
      cubit.addExtraBalance(
        amount: amount,
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TreasuryCubit, TreasuryState>(
      listener: (context, state) {
        state.whenOrNull(
          addExpenseSuccess: () => Navigator.of(context).pop(),
          addExtraBalanceSuccess: () => Navigator.of(context).pop(),
          addExpenseFailure: (failure) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(failure.message)),
          ),
          addExtraBalanceFailure: (failure) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(failure.message)),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.isExpense ? 'إضافة مصروف' : 'إضافة رصيد للخزنة',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'المبلغ'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'البيان (اختياري)'),
            ),
            const SizedBox(height: 20),
            BlocBuilder<TreasuryCubit, TreasuryState>(
              builder: (context, state) {
                final isSubmitting = state.mapOrNull(
                      addExpenseLoading: (_) => true,
                      addExtraBalanceLoading: (_) => true,
                    ) ??
                    false;

                return MainButton(
                  label: isSubmitting ? '...جاري الحفظ' : 'حفظ',
                  width: double.infinity,
                  backgroundColor: widget.isExpense ? Colors.red : Colors.green,
                  onPressed: isSubmitting ? null : _submit,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}