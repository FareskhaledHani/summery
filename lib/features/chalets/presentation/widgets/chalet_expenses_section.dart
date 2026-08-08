import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_expense_entity.dart';

import '../cubit/details_cubit/chalets_details_cubit.dart';

class ChaletExpensesSection extends StatelessWidget {
  const ChaletExpensesSection({super.key, required this.expenses});

  final List<ChaletExpenseEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'مصروفات الشاليه',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextButton.icon(
              onPressed: () => _openAddExpenseSheet(context),
              icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
              label: const Text('سحب مصروف', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
        if (expenses.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text('لا توجد مصروفات مسجلة', style: TextStyle(color: Colors.grey)),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: expenses.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final expense = expenses[index];
              return ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  expense.description?.isNotEmpty == true
                      ? expense.description!
                      : 'مصروف',
                  style: TextStyle(
                    decoration: expense.isCancelled ? TextDecoration.lineThrough : null,
                    color: expense.isCancelled ? Colors.grey : null,
                  ),
                ),
                subtitle: Text(expense.createdAt.toLocal().toString().split(' ').first),
                trailing: expense.isCancelled
                    ? const Text('ملغي', style: TextStyle(color: Colors.grey))
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '-${expense.amount.toStringAsFixed(0)} ج.م',
                            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close, size: 18, color: Colors.grey),
                            onPressed: () => _confirmCancel(context, expense.id!),
                          ),
                        ],
                      ),
              );
            },
          ),
      ],
    );
  }

  void _openAddExpenseSheet(BuildContext context) {
    final cubit = context.read<ChaletDetailsCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => BlocProvider.value(
        value: cubit,
        child: const _AddExpenseSheet(),
      ),
    );
  }

  Future<void> _confirmCancel(BuildContext context, int expenseId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('تأكيد الإلغاء'),
        content: const Text('هل تريد إلغاء هذا المصروف؟ سيتم إرجاع المبلغ لرصيد الشاليه.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('رجوع'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('نعم، إلغاء'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      await context.read<ChaletDetailsCubit>().cancelExpense(expenseId);
    }
  }
}

class _AddExpenseSheet extends StatefulWidget {
  const _AddExpenseSheet();

  @override
  State<_AddExpenseSheet> createState() => _AddExpenseSheetState();
}

class _AddExpenseSheetState extends State<_AddExpenseSheet> {
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final amount = double.tryParse(_amountController.text) ?? 0;
    if (amount <= 0) return;

    await context.read<ChaletDetailsCubit>().addExpense(
          amount: amount,
          description: _descriptionController.text.trim().isEmpty
              ? null
              : _descriptionController.text.trim(),
        );

    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const Text(
            'سحب مصروف من الشاليه',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: _submit,
              child: const Text('سحب المصروف'),
            ),
          ),
        ],
      ),
    );
  }
}