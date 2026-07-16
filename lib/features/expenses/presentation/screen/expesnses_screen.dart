import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_summer/features/expenses/presentation/widgets/treasury_action_buttons.dart';
import 'package:my_summer/features/expenses/presentation/widgets/treasury_history_list.dart';
import 'package:my_summer/features/expenses/presentation/widgets/treasury_total_card.dart';

import '../../domain/entity/history_entity.dart';
import '../cubit/treasury_cubit.dart';
import '../cubit/treasury_state.dart';


class ExpesnsesScreen extends StatelessWidget {
  const ExpesnsesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<TreasuryCubit>()..loadAll(),
      child: const _ExpensesView(),
    );
  }
}

class _ExpensesView extends StatelessWidget {
  const _ExpensesView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الخزنة')),
      body: BlocBuilder<TreasuryCubit, TreasuryState>(
        builder: (context, state) {
          final total = state.mapOrNull(
            getTotalTreasurySuccess: (s) => s.total,
          );

          final history = state.mapOrNull(
            getHistorySuccess: (s) => s.history,
          ) ?? const <TreasuryHistoryItem>[];

          final isLoading = state.mapOrNull(
                getTotalTreasuryLoading: (_) => true,
                getHistoryLoading: (_) => true,
              ) ??
              false;

          final failureMessage = state.mapOrNull(
            getTotalTreasuryFailure: (s) => s.failure.message,
            getHistoryFailure: (s) => s.failure.message,
          );

          if (isLoading && total == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (failureMessage != null && total == null) {
            return Center(child: Text(failureMessage));
          }

          return RefreshIndicator(
            onRefresh: () => context.read<TreasuryCubit>().loadAll(),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TreasuryTotalCard(
                  total: total ?? 0,
                  year: context.read<TreasuryCubit>().currentYear,
                ),
                const SizedBox(height: 16),
                const TreasuryActionButtons(),
                const SizedBox(height: 20),
                const Text(
                  'سجل الحركات',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                TreasuryHistoryList(items: history),
              ],
            ),
          );
        },
      ),
    );
  }
}